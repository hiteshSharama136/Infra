variable "cdn_frontdoor_profile_id" {
  type        = string
}

variable "frontdoor_rule_set_name" {
  type        = string
  description = "(Required) Name for the application gateway to be deployed"
}