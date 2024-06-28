# Azure Kubernetes Service (AKS) Terraform Module

This Terraform module manages an Azure Kubernetes Service (AKS) cluster.

## Usage

### Basic Usage
module "aks_cluster" {
  source = "path_to_your_module"
  
  cluster_name              = "example-cluster"
  location                  = "East US"
  resource_group_name       = "example-resource-group"
  kubernetes_version        = "1.21.4"
  workload_identity_enabled = true
  http_application_routing_enabled = true
  azure_policy_enabled      = true
  oidc_issuer_enabled       = false
  local_account_disabled    = false

  identity {
    type        = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.example.id]
  }

  default_node_pool {
    name                = "default"
    vm_size             = "Standard_DS2_v2"
    node_count          = 3
    os_disk_size_gb     = 30
    vnet_subnet_id      = azurerm_subnet.example.id
    enable_auto_scaling = true
    min_count           = 1
    max_count           = 5
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "Standard"
  }

  linux_profile {
    admin_username = "adminuser"
    ssh_key {
      key_data = file("~/.ssh/id_rsa.pub")
    }
  }

  auto_scaler_profile {
    scan_interval                    = "PT5M"
    scale_down_delay_after_add       = "PT5M"
    scale_down_delay_after_delete    = "PT5M"
    scale_down_delay_after_failure   = "PT5M"
    scale_down_unneeded              = "PT5M"
    scale_down_unready               = "PT5M"
    scale_down_utilization_threshold = 0.5
    max_graceful_termination_sec     = 600
  }

  azure_active_directory_role_based_access_control {
    admin_group_object_ids = [data.azuread_group.example.object_id]
    azure_rbac_enabled     = true
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  }

  private_cluster_enabled = true
}


## Inputs

| Name                                           | Description                                                          | Type     | Default | Required |
|------------------------------------------------|----------------------------------------------------------------------|----------|---------|----------|
| cluster_name                                   | The name of the AKS cluster.                                         | string   | n/a     | yes      |
| location                                       | The location/region where the AKS cluster will be created.           | string   | n/a     | yes      |
| resource_group_name                            | The name of the resource group in which the AKS cluster will be created. | string   | n/a     | yes      |
| dns_prefix                                     | DNS prefix for the AKS cluster.                                      | string   | n/a     | no       |
| tags                                           | Tags to apply to the AKS cluster resources.                          | map      | {}      | no       |
| kubernetes_version                             | The version of Kubernetes to use for the AKS cluster.                 | string   | n/a     | yes      |
| workload_identity_enabled                      | Whether to enable workload identity for the AKS cluster.              | bool     | n/a     | no       |
| http_application_routing_enabled               | Whether to enable HTTP application routing addon for the AKS cluster. | bool     | n/a     | no       |
| azure_policy_enabled                           | Whether to enable Azure Policy for the AKS cluster.                   | bool     | n/a     | no       |
| oidc_issuer_enabled                            | Whether to enable OIDC issuer integration for the AKS cluster.        | bool     | n/a     | no       |
| local_account_disabled                         | Whether to disable the local account for Kubernetes access.           | bool     | n/a     | no       |
| identity                                       | The identity block configuration for the AKS cluster.                 | object   | null    | no       |
| default_node_pool                              | Configuration block for the default node pool of the AKS cluster.     | object   | null    | no       |
| network_profile                                | Configuration block for the network profile of the AKS cluster.       | object   | null    | no       |
| linux_profile                                  | Configuration block for Linux profile settings of the AKS cluster.     | object   | null    | no       |
| windows_profile                                | Configuration block for Windows profile settings of the AKS cluster.   | object   | null    | no       |
| auto_scaler_profile                            | Configuration block for the auto scaler profile settings of the AKS cluster. | object   | null    | no       |
| azure_active_directory_role_based_access_control | Configuration block for Azure AD RBAC settings of the AKS cluster.    | object   | null    | no       |
| oms_agent                                      | Configuration block for OMS agent integration with the AKS cluster.   | object   | null    | no       |
| private_cluster_enabled                        | Whether to enable private cluster configuration for the AKS cluster.  | bool     | n/a     | no       |

## Outputs

| Name                       | Description                                                |
|----------------------------|------------------------------------------------------------|
| id                         | The ID of the AKS cluster.                                  |
| resource_group             | The name of the resource group where the cluster is located. |
| resource_group_id          | The ID of the resource group where the cluster is located.  |
| identity                   | The principal ID of the AKS cluster identity.               |
| kubelet_identity           | The object ID of the kubelet identity in AKS.               |
| oms_agent_identity         | The object ID of the OMS agent identity in AKS.             |
| aks_cluster_name           | The name of the AKS cluster.                                |
| client_key                 | The client key for Kubernetes API access.                   |
| client_certificate         | The client certificate for Kubernetes API access.           |
| cluster_ca_certificate     | The CA certificate for Kubernetes API access.               |
| cluster_username           | The Kubernetes API username.                                |
| cluster_password           | The Kubernetes API password.                                |
| kube_config                | The Kubernetes kubeconfig file.                             |
| host                       | The Kubernetes API server host.                             |
