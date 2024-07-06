resource "azurerm_cdn_frontdoor_rule_set" "front_door_rule_set" {
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
}