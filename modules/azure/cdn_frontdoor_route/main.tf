resource "azurerm_cdn_frontdoor_route" "route" {
  name                            = var.name
  cdn_frontdoor_endpoint_id       = var.cdn_frontdoor_endpoint_id
  cdn_frontdoor_origin_group_id   = var.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids        = var.cdn_frontdoor_origin_ids

  enabled                         = var.enabled
  supported_protocols             = var.supported_protocols
  patterns_to_match               = var.patterns_to_match
  forwarding_protocol             = var.forwarding_protocol
  link_to_default_domain          = var.link_to_default_domain
  https_redirect_enabled          = var.https_redirect_enabled
  cdn_frontdoor_custom_domain_ids = var.cdn_frontdoor_custom_domain_ids
}