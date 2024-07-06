resource "azurerm_redis_cache" "redis_cache" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name

  public_network_access_enabled = var.public_network_access_enabled
  
  enable_non_ssl_port = var.enable_non_ssl_port 
  
  minimum_tls_version = var.minimum_tls_version

  redis_configuration {
  }

  tags = var.tags
}