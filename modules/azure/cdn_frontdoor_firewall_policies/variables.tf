variable "resource_group_name" {
  type = string
  description = "The name of the resource group"
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

variable "custom_domain_ids" {
  type = list(any)
  description = "The list of Resource Id of the Front Door Custom Domains or Front Door Endpoints that should be bound to this Front Door Security Policy"
}

variable "endpoint_ids" {
  type = list(any)
  description = "The list of Resource Id of the Front Door Custom Domains or Front Door Endpoints that should be bound to this Front Door Security Policy"
}



variable "security_policies" {
  type = list(object({
    name               = string
    firewall_name      = string
    custom_domain_names = list(any)
    endpoint_names     = list(any)
  }))
  default = []
  description = <<EOF
# * name -->(string)(required) The name which should be used for this Front Door Security Policy. Possible values must not be an empty string
# * firewall_name -->(string)(required) The name of the firewall policy to attach
# * custom_domain_names -->(string)(optional) The list of custom domains to attach to the firewall policy
# * endpoint_names -->(string)(optional) The list of endpoint names to attach to the firewall policy

example:
[
  {
    name = "security-policy-01"
    firewall_name = "firewall-01"
    custom_domain_names = [
      "test-custom-domain"
    ]
    endpoint_names = [
      "test-endpoint"
    ]
  }
]
EOF
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