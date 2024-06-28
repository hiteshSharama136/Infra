data "azurerm_client_config" "current" {}


data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_rg
}

data "azurerm_log_analytics_workspace" "current" {
  name                = local.workspace_name
  resource_group_name = local.global_resource_group_name
}


module "aks_cluster" {

  source                              = "../../modules/azure/aks-cluster"
  resource_group_name                 = var.resource_group_name
  location                           = var.location
  
  cluster_name                        = var.cluster_name

  kubernetes_version                 = var.kubernetes_version

  identity_type                      = var.identity_type

  network_policy                     = var.network_policy

  os_disk_size_gb                    = var.os_disk_size_gb

  node_pool_vm_size                  = var.node_pool_vm_size
  
  max_pods                            = var.max_pods_per_node
    
  node_pool_min_node_count            = var.node_pool_min_node_count
    
  node_pool_max_node_count            = var.node_pool_max_node_count

  vnet_subnet_id                      = data.azurerm_subnet.subnet.id
  
  log_analytics_workspace_id         =  data.azurerm_log_analytics_workspace.current.id

  azure_ad_group_id                   = var.azure_ad_group_id
  admin_username                      = var.admin_username

  win_admin_password                  = var.win_admin_password

  public_ssh_key                      = var.public_ssh_key
  tags                                = var.tags
}


module "msi" {

  source  = "../../modules/azure/user-assigned-identity"

  name  = var.msi_name

  location      = var.location
  resource_group_name  = module.aks_cluster.resource_group

  tags = var.tags

  depends_on = [ module.aks_cluster ]
}


data "azurerm_container_registry" "current" {
  provider            = azurerm.uat
  name                = local.container_registry_name
  resource_group_name = local.container_registry_rg_name
}


data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg
}


data "azurerm_app_configuration" "config_store" {
  name                = local.configuration_store_name
  resource_group_name = local.global_resource_group_name
}


data "azurerm_key_vault" "current" {
  name                = local.key_vault_name
  resource_group_name = local.global_resource_group_name
}

resource "azurerm_key_vault_access_policy" "access_policy_user_msi" {
  key_vault_id = data.azurerm_key_vault.current.id
  
  tenant_id    = data.azurerm_client_config.current.tenant_id

  object_id    = module.msi.principal_id

  secret_permissions = [
    "Get", "List"
  ]
}

resource "azurerm_key_vault_access_policy" "access_policy_agent_pool_msi" {
  key_vault_id = data.azurerm_key_vault.current.id
  
  tenant_id    = data.azurerm_client_config.current.tenant_id

  object_id    = module.aks_cluster.kubelet_identity

  secret_permissions = [
    "Get", "List"
  ]
}


data "azurerm_storage_account" "storage_account" {
  name                = local.storage_account_name
  resource_group_name = local.storage_account_rg_name
}


module "role_assignments" {
  source               = "../../modules/azure/role-assignment"
  role_assignment_list = {
    managed_identity_operator = {
      scope              = module.aks_cluster.resource_group_id,
      role_definition_name = "Managed Identity Operator",
      principal_id       = module.aks_cluster.kubelet_identity
    },
    virtual_machine_contributor = {
      scope              = module.aks_cluster.resource_group_id,
      role_definition_name = "Virtual Machine Contributor",
      principal_id       = module.aks_cluster.kubelet_identity
    },
     container_registry = {
      scope              = data.azurerm_container_registry.current.id,
      role_definition_name = "Contributor",
      principal_id       = module.aks_cluster.kubelet_identity
    },
    container_registry_acr_pull = {
      scope              = data.azurerm_container_registry.current.id,
      role_definition_name = "AcrPull",
      principal_id       = module.aks_cluster.oms_agent_identity
    },
     aks_cluster = {
      scope              =  module.aks_cluster.id,
      role_definition_name = "Monitoring Metrics Publisher",
      principal_id       = module.aks_cluster.oms_agent_identity
    },

     network_contributor = {
      scope              =  data.azurerm_virtual_network.vnet.id,
      role_definition_name = "Network Contributor",
      principal_id       = module.aks_cluster.identity
    },   

     config_store_data_reader_pool_id = {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "App Configuration Data Reader"
      principal_id         = module.aks_cluster.kubelet_identity
    },
    config_store_data_reader_workload_id =  {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "App Configuration Data Reader"
      principal_id         = module.msi.principal_id
    }

    config_store_storage_table_data_pool_id =  {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "Storage Table Data Contributor"
      principal_id         = module.aks_cluster.kubelet_identity
    }

    config_store_storage_table_data_workload_id =  {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "Storage Table Data Contributor"
      principal_id         = module.msi.principal_id
    }

    config_store_storage_blob_data_pool_id =  {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "Storage Blob Data Contributor"
      principal_id         = module.aks_cluster.kubelet_identity
    }

    config_store_storage_blob_data_workload_id  = {
      scope                = data.azurerm_app_configuration.config_store.id
      role_definition_name = "Storage Blob Data Contributor"
      principal_id         = module.msi.principal_id
    }

    azurerm_storage_account_data_reader_pool_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "App Configuration Data Reader"
      principal_id         = module.aks_cluster.kubelet_identity
    }

    azurerm_storage_account_data_reader_workload_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "App Configuration Data Reader"
      principal_id         = module.msi.principal_id
    }

    azurerm_storage_account_storage_table_data_pool_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "Storage Table Data Contributor"
      principal_id         = module.aks_cluster.kubelet_identity
    }

    azurerm_storage_account_storage_table_data_workload_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "Storage Table Data Contributor"
      principal_id         = module.msi.principal_id
    }

    azurerm_storage_account_storage_blob_data_pool_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "Storage Blob Data Contributor"
      principal_id         = module.aks_cluster.kubelet_identity 
    }

    azurerm_storage_account_storage_blob_data_workload_id = {
      scope                = data.azurerm_storage_account.storage_account.id
      role_definition_name = "Storage Blob Data Contributor"
      principal_id         = module.msi.principal_id
    }
      
  }

  depends_on =  [module.aks_cluster]
}
