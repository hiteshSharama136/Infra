resource "azurerm_user_assigned_identity" "aks_identity" {
  name                = var.identity_name
  resource_group_name = var.resource_group_name
  location            = var.location

  tags = var.tags
}

resource "azurerm_role_assignment" "aks_identity_role_assignment" {
  scope                = var.scope
  role_definition_name = var.role_definition_name
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.aks_identity.id]
  }

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
  
  tags = var.tags
}
