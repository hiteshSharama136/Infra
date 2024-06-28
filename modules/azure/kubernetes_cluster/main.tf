resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name                = var.default_node_pool_name
    node_count          = var.default_node_pool_node_count
    vm_size             = var.default_node_pool_vm_size
    os_disk_size_gb     = var.default_node_pool_os_disk_size_gb
    max_pods            = var.default_node_pool_max_pods
    type                = var.default_node_pool_type
    orchestrator_version = var.default_node_pool_orchestrator_version
    enable_auto_scaling = var.default_node_pool_enable_auto_scaling

    min_count = var.default_node_pool_min_count
    max_count = var.default_node_pool_max_count
    node_labels = var.default_node_pool_node_labels
    # node_taints = var.default_node_pool_node_taints
  }

  identity {
    type = var.identity_type
  }

  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = var.network_policy
    load_balancer_sku  = var.load_balancer_sku
    outbound_type      = var.outbound_type
    load_balancer_profile {
      managed_outbound_ip_count      = var.managed_outbound_ip_count
      effective_outbound_ips         = var.effective_outbound_ips
    }
  }

  # role_based_access_control {
  #   enabled = var.role_based_access_control_enabled

  #   azure_active_directory {
  #     managed = var.azure_active_directory_managed
  #     admin_group_object_ids = var.azure_active_directory_admin_group_object_ids
  #   }
  # }

  # addon_profile {
  #   ingress_application_gateway {
  #     enabled = var.ingress_application_gateway_enabled
  #     subnet_id = var.ingress_application_gateway_subnet_id
  #   }
  # }

  tags = var.tags
}
