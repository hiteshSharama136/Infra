resource "azurerm_cdn_frontdoor_endpoint" "endpoint" {
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  enabled                  = var.enabled
  tags                     = var.tags
}