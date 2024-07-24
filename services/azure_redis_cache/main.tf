module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "redis_cache" {
  source = "../../modules/azure/redis_cache"

  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  redis_cache_id      = var.redis_cache_id
  virtual_network_id  = var.virtual_network_id
  private_endpoint_name  = var.private_endpoint_name
  private_dns_zone_name = var.private_dns_zone_name
  subnet_id           = var.subnet_id  
  tags                = var.tags
}
