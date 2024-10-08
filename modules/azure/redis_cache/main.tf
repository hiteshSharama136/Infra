resource "azurerm_private_dns_zone" "redis_cache_dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "redis_cache_dns_zone_link" {
  name                = "redis-cache-dns-link"
  resource_group_name = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.redis_cache_dns_zone.name
  virtual_network_id  = var.virtual_network_id
  # is_manual_connection = false
}