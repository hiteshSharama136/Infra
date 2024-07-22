module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "signalr_service" {
  source = "../../modules/azure/signalr_service"

  signalr_service_name   = var.signalr_service_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  tags                = var.tags
}

module "signalr_service_network_acl" {
  source = "../../modules/azure/signalr_service_network_acl"

  signalr_service_id   = var.signalr_service_id
}
