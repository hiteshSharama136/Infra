module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "cdn_frontdoor_profile" {
  source = "../../modules/azure/cdn_frontdoor_profile"

  frontdoor_profile_name  = var.frontdoor_profile_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "cdn_frontdoor_endpoint" {
  source = "../../modules/azure/cdn_frontdoor_endpoint"

  frontdoor_endpoint_name   = var.frontdoor_endpoint_name
  cdn_frontdoor_profile_id  = var.cdn_frontdoor_profile_id
  tags                     = var.tags
}

module "cdn_frontdoor_custom_domain" {
  source = "../../modules/azure/cdn_frontdoor_custom_domain"

  frontdoor_host_name  = var.frontdoor_host_name
  custom_domain_name   = var.custom_domain_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  tls_settings    = var.tls_settings
}

module "cdn_frontdoor_origin" {
  source = "../../modules/azure/cdn_frontdoor_origin"

  frontdoor_origin_name    = var.frontdoor_origin_name
  cdn_frontdoor_origin_group_id  = var.cdn_frontdoor_origin_group_id
  host_name                = var.host_name
  http_port                = var.http_port
  https_port               = var.https_port

  private_link_id          = var.private_link_id
  private_link_location    = var.private_link_location
}

module "cdn_frontdoor_origin_group" {
  source = "../../modules/azure/cdn_frontdoor_origin_group"

  frontdoor_origin_group_name  = var.frontdoor_origin_group_name
  cdn_frontdoor_profile_id  = var.cdn_frontdoor_profile_id
}

module "cdn_frontdoor_route" {
  source = "../../modules/azure/cdn_frontdoor_route"

  frontdoor_route_name     = var.frontdoor_route_name
  cdn_frontdoor_origin_group_id  = var.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids  = var.cdn_frontdoor_origin_ids
  cdn_frontdoor_endpoint_id = var.cdn_frontdoor_endpoint_id
  patterns_to_match        = var.patterns_to_match
  forwarding_protocol      = var.route_forwarding_protocol
}

# module "cdn_frontdoor_firewall_policy" {
#   source = "../../modules/azure/cdn_frontdoor_firewall_policies"

#   front_door_sku_name   = var.front_door_sku_name
#   resource_group_name = var.resource_group_name
#   custom_domain_ids  = var.custom_domain_ids
#   cdn_frontdoor_profile_id  = var.cdn_frontdoor_profile_id
#   firewall_policies  = var.firewall_policies
#   endpoint_ids    = var.endpoint_ids
# }

module "cdn_frontdoor_rule_set" {
  source = "../../modules/azure/cdn_frontdoor_profile_rule_set"

  frontdoor_rule_set_name  = var.frontdoor_rule_set_name
  cdn_frontdoor_profile_id  = var.cdn_frontdoor_profile_id
}

module "cdn_frontdoor_security_policy" {
  source = "../../modules/azure/cdn_frontdoor_security_policy"

  front_door_sku_name  = var.front_door_sku_name
  resource_group_name      = var.resource_group_name
  custom_domain_ids        = var.custom_domain_ids
  cdn_frontdoor_profile_id  = var.cdn_frontdoor_profile_id
  firewall_policies   = var.firewall_policies

  endpoint_ids  = var.endpoint_ids
}
