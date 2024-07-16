module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "redis_cache" {
  source = "../../modules/azure/redis_cache"

  redis_cache_name    = var.redis_cache_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  sku_name            = var.sku_name
  capacity            = var.capacity
  family              = var.family
  enable_non_ssl_port = var.enable_non_ssl_port
  tags                = var.tags
}


