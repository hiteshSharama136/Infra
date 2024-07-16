resource "azurerm_cdn_frontdoor_profile" "front_door" {
  name                     = var.frontdoor_profile_name
  resource_group_name      = var.resource_group_name
  sku_name                 = var.sku_name
  response_timeout_seconds = var.response_timeout_seconds
  tags                     = var.tags
}
