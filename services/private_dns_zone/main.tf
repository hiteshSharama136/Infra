module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "private_dns_zone" {
  source = "../../modules/azure/private_dns_zone"

  dns_zone_name      = var.dns_zone_name
  resource_group_name = module.resource_group.resource_group_name
  dns_zone_resource_group_name = module.resource_group
  tags                = var.tags
}
