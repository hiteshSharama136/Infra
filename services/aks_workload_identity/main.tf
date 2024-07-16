module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "aks_workload_identity" {
  source = "../../modules/azure/aks_workload_identity"

  identity_name       = var.identity_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  scope               = var.scope
  role_definition_name = var.role_definition_name

  aks_name                  = var.aks_name
  dns_prefix                = var.dns_prefix
  default_node_pool_name    = var.default_node_pool_name
  default_node_pool_node_count = var.default_node_pool_node_count
  default_node_pool_vm_size = var.default_node_pool_vm_size
  default_node_pool_os_disk_size_gb = var.default_node_pool_os_disk_size_gb
  default_node_pool_max_pods = var.default_node_pool_max_pods
  default_node_pool_type    = var.default_node_pool_type
  default_node_pool_orchestrator_version = var.default_node_pool_orchestrator_version
  default_node_pool_enable_auto_scaling = var.default_node_pool_enable_auto_scaling
  default_node_pool_min_count = var.default_node_pool_min_count
  default_node_pool_max_count = var.default_node_pool_max_count
  default_node_pool_node_labels = var.default_node_pool_node_labels
  network_plugin             = var.network_plugin
  network_policy             = var.network_policy
  load_balancer_sku          = var.load_balancer_sku
  outbound_type              = var.outbound_type
  managed_outbound_ip_count  = var.managed_outbound_ip_count
  effective_outbound_ips     = var.effective_outbound_ips

  tags = var.tags
}
