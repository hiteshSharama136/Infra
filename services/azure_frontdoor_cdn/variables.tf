variable "arm_tenant_id" {
  type        = string
  description = "The tenant Id of azure provider"
}

variable "arm_subscription_id" {
  type        = string
  description = "The subscription Id of azure provider"
}

variable "arm_client_id" {
  type        = string
  description = "The client Id of azure provider spn"
}

variable "arm_client_secret" {
  type        = string
  sensitive   = true
  description = "The client secret of azure provider spn"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to add to the Private DNS Zone"
  type        = map(string)
  default     = {}
}

variable "frontdoor_profile_name" {
  type        = string
  description = "Specifies the name of the Front Door Profile"
}

variable "frontdoor_endpoint_name" {
  type        = string
  description = "The name which should be used for this Front Door Endpoint"
}

variable "cdn_frontdoor_profile_id" {
  type        = string
  description = "The ID of the Front Door Profile within which this Front Door Endpoint should exist"
}

variable "custom_domain_name" {
  description = "The custom domain names to be associated with the Azure Front Door instance."
  type        = map(string)
}

variable "cdn_frontdoor_profile_id" {
  description = "The ID of the Azure CDN Front Door profile."
  type        = string
}

variable "frontdoor_host_name" {
  description = "The host name of the Azure Front Door instance."
  type        = string
}

variable "tls_settings" {
  description = "TLS settings for custom domains."
  type        = map(object({
    minimum_tls_version = string
    certificate_name    = string
    key_vault_secret_id = string
  }))
}

variable "host_name" {
  type        = string
  description = "The IPv4 address, IPv6 address or Domain name of the Origin"
}

variable "http_port" {
  type        = number
  default     = 80
  description = "The value of the HTTP port. Must be between 1 and 65535. Defaults to 80"
}

variable "https_port" {
  type        = number
  default     = 443
  description = "The value of the HTTPS port. Must be between 1 and 65535. Defaults to 443"
} 

variable "frontdoor_origin_name" {
  type        = string
  description = "The name which should be used for this Front Door Origin"
}

variable "cdn_frontdoor_origin_group_id" {
  type        = string
  description = "The ID of the Front Door Origin Group within which this Front Door Origin should exist"
}

variable "private_link_location" {
  type        = string
}

variable "private_link_id" {
  type        = string
}

variable "frontdoor_origin_group_name" {
  type        = string
  description = "The name which should be used for this Front Door Origin Group"
}

variable "frontdoor_route_name" {
  type        = string
  description = "The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters"
}

variable "cdn_frontdoor_endpoint_id" {
  type        = string
  description = "The resource ID of the Front Door Endpoint where this Front Door Route should exist"
}

variable "cdn_frontdoor_origin_group_id" {
  type        = string
  description = "The resource ID of the Front Door Origin Group where this Front Door Route should be created"
}

variable "cdn_frontdoor_origin_ids" {
  type        = list(string)
  description = "One or more Front Door Origin resource IDs that this Front Door Route will link to"
}

variable "front_door_sku_name" {
  type = string
  description = "The sku's pricing tier for this Front Door Firewall Policy. Possible values include Standard_AzureFrontDoor or Premium_AzureFrontDoor"
}

variable "cdn_frontdoor_profile_id" {
  type = string
  description = "The Front Door Profile Resource Id that is linked to this Front Door Security Policy"
}

variable "patterns_to_match" {
  type = list(string)
  default = [ "/*" ]
  description = "The list of paths to match for this firewall policy. Possible value includes /*"
}

variable "cdn_frontdoor_profile_id" {
  type = string
  description = "The Front Door Profile Resource Id that is linked to this Front Door Security Policy"
}

variable "endpoint_ids" {
  type = list(any)
  description = "The list of Resource Id of the Front Door Custom Domains or Front Door Endpoints that should be bound to this Front Door Security Policy"
}

variable "route_forwarding_protocol" {
  description = "The forwarding protocol of the CDN front door route"
  type        = string
}

variable "cdn_frontdoor_profile_id" {
  type        = string
}

variable "frontdoor_rule_set_name" {
  type        = string
  description = "(Required) Name for the application gateway to be deployed"
}

variable "custom_domain_ids" {
  type = list(any)
  description = "The list of Resource Id of the Front Door Custom Domains or Front Door Endpoints that should be bound to this Front Door Security Policy"
}

variable "firewall_policies" {
  type = list(object({
    name          = string
    mode          = string
    custom_rules  = list(object({
      name                           = string
      enabled                        = bool
      priority                       = number
      rate_limit_duration_in_minutes = number
      rate_limit_threshold           = number
      type                           = string
      action                         = string
      match_conditions               = list(object({
        match_variable     = string
        operator           = string
        negation_condition = bool
        match_values       = list(string)
      }))
    }))
  }))
}