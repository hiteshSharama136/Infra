data "azurerm_client_config" "current" {}


data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg
}

resource "azurerm_subnet" "current" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_virtual_network.vnet.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.CIDR_range 
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = local.aks_name
  resource_group_name = local.aks_resource_group_name
}


resource "azurerm_kubernetes_cluster_node_pool" "example" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = data.azurerm_kubernetes_cluster.aks.id
  vm_size               = var.node_pool_vm_size
  enable_auto_scaling   = true
  vnet_subnet_id        = azurerm_subnet.current.id
  
  max_pods  = var.max_pods_per_node

  node_count = var.node_pool_node_count
  max_count  = var.node_pool_max_node_count
  min_count  = var.node_pool_min_node_count

  mode      = var.node_pool_mode

  zones  = var.zones
  orchestrator_version = var.orchestrator_version

  tags = var.tags    
}