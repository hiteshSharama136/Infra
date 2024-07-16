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

variable "enabled" {
  type        = bool
  default     = true
  description = "Is this Front Door Route enabled? Possible values are true or false. Defaults to true"
}

variable "supported_protocols" {
  type        = list(string)
  default     = [ "Https", "Http" ]
  description = "One or more Protocols supported by this Front Door Route. Possible values are Http or Https"
}

variable "patterns_to_match" {
  type        = list(string)
  description = "The route patterns of the rule"
}

variable "forwarding_protocol" {
  type        = string
  default     = "HttpsOnly"
  description = "The Protocol that will be use when forwarding traffic to backends. Possible values are HttpOnly, HttpsOnly or MatchRequest"
}

variable "link_to_default_domain" {
  type        = bool
  default     = true
  description = "Should this Front Door Route be linked to the default endpoint? Possible values include true or false. Defaults to true"
}

variable "https_redirect_enabled" {
  type        = bool
  default     = true
  description = "Automatically redirect HTTP traffic to HTTPS traffic? Possible values are true or false. Defaults to true"
}

variable "cdn_frontdoor_custom_domain_ids" {
  type        = list(string)
  default     = []
  description = "The IDs of the Front Door Custom Domains which are associated with this Front Door Route"
}