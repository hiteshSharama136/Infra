resource "azurerm_kubernetes_cluster" "k8s" {

  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_name
  tags                = var.tags

  kubernetes_version    = var.kubernetes_version

  workload_identity_enabled  = var.workload_identity_enabled

  http_application_routing_enabled  = var.http_application_routing_enabled
  
  azure_policy_enabled    = var.azure_policy_enabled

  oidc_issuer_enabled  = var.oidc_issuer_enabled

  local_account_disabled = var.local_account_disabled

  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }

  default_node_pool {

    name                = var.node_pool_name
    
    temporary_name_for_rotation = "temppool"

    vm_size             = var.node_pool_vm_size
    
    max_pods            = var.max_pods
    
    node_count          = var.node_pool_node_count

    os_disk_size_gb  = var.os_disk_size_gb

    vnet_subnet_id      = var.vnet_subnet_id

    enable_auto_scaling = var.enable_auto_scaling
    
    min_count           = var.node_pool_min_node_count
    
    max_count           = var.node_pool_max_node_count

    tags                = var.tags
  }

  network_profile {
    network_plugin    = var.network_plugin
    # network_policy    = var.network_policy
    load_balancer_sku = var.load_balancer_sku
  }

  linux_profile  {
    admin_username   = var.admin_username
    ssh_key  {
      key_data   = var.public_ssh_key
    }
  }

  windows_profile  {
    admin_username   = var.admin_username
    admin_password   = var.win_admin_password
  }

  auto_scaler_profile  {
    scan_interval                    = var.auto_scaler_profile_scan_interval
    scale_down_delay_after_add       = var.auto_scaler_profile_scale_down_delay_after_add
    scale_down_delay_after_delete    = var.auto_scaler_profile_scale_down_delay_after_delete
    scale_down_delay_after_failure   = var.auto_scaler_profile_scale_down_delay_after_failure
    scale_down_unneeded         = var.auto_scaler_profile_scale_down_unneeded_time
    scale_down_unready          = var.auto_scaler_profile_scale_down_unready_time
    scale_down_utilization_threshold = var.auto_scaler_profile_utilization_threshold
    max_graceful_termination_sec     = var.auto_scaler_profile_max_graceful_termination_sec
  }

  azure_active_directory_role_based_access_control {
    # managed                = var.azuread_managed
    admin_group_object_ids = [var.azure_ad_group_id]
    azure_rbac_enabled     = var.azuread_rbac_enabled
  }

  oms_agent {
      log_analytics_workspace_id  = var.log_analytics_workspace_id
  }

  private_cluster_enabled = var.private_cluster_enabled
}