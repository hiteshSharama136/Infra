module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "redis_cache" {
  source = "../../modules/azure/redis_cache"

  private_endpoint_name  = var.private_endpoint_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id              = var.subnet_id
  redis_cache_id         = var.redis_cache_id
  private_dns_zone_name  = var.private_dns_zone_name
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "private_endpoint" {
  source = "../../modules/azure/private_endpoint"

  private_connection_name = var.private_connection_name
  private_endpoint_name   = var.private_endpoint_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  private_dns_zone_ids    = var.private_dns_zone_ids
  private_dns_zone_group_name  = var.private_dns_zone_group_name
  subnet_id    = var.subnet_id

  tags  = var.tags
}
