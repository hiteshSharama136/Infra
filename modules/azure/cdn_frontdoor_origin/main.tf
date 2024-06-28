resource "azurerm_cdn_frontdoor_origin" "origin" {
  name                           = var.name
  cdn_frontdoor_origin_group_id  = var.cdn_frontdoor_origin_group_id

  enabled                        = var.enabled
  host_name                      = var.host_name
  http_port                      = var.http_port
  https_port                     = var.https_port
  origin_host_header             = var.origin_host_header
  priority                       = var.priority
  weight                         = var.weight
  certificate_name_check_enabled = var.certificate_name_check_enabled

  private_link {
    request_message        = var.private_link_request_message 
    location               = var.private_link_location
    private_link_target_id = var.private_link_id 
  }

}