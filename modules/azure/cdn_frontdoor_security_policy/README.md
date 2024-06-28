# Terraform Module: Azure CDN Front Door Security and Firewall Policies Module

This Terraform module manages Azure CDN Front Door security policies and their associated firewall policies. It allows you to define security policies with specific firewall configurations, associating them with CDN Front Door profiles.

## Usage

module "cdn_frontdoor_security" {
  source                     = "path_to_your_module"
  cdn_frontdoor_profile_id   = "your_cdn_frontdoor_profile_id"
  security_policies = {
    "policy1" = {
      name = "policy1"
      firewall_name = "firewall_policy1"
    }
    "policy2" = {
      name = "policy2"
      firewall_name = "firewall_policy2"
    }
  }
  firewall_policies = {
    "firewall_policy1" = {
      name = "firewall_policy1"
      enabled = true
      mode = "Prevention"
      custom_rules = [
        {
          name = "rule1"
          enabled = true
          priority = 1
          rate_limit_duration_in_minutes = 1
          rate_limit_threshold = 10
          type = "MatchRule"
          action = "Block"
          match_conditions = [
            {
              match_variable = "RemoteAddr"
              operator = "IPMatch"
              match_values = ["192.168.0.0/24"]
            }
          ]
        }
      ]
    }
    "firewall_policy2" = {
      name = "firewall_policy2"
      enabled = true
      mode = "Detection"
      custom_rules = []
    }
  }
  resource_group_name = "your_resource_group_name"
  front_door_sku_name = "Standard_Microsoft"
  patterns_to_match   = ["/*"]
}

## Inputs

| Name                    | Description                                                   | Type                                                                                         | Default  | Required |
|-------------------------|---------------------------------------------------------------|----------------------------------------------------------------------------------------------|----------|----------|
| cdn_frontdoor_profile_id | The ID of the Azure CDN Front Door profile.                   | string                                                                                       | n/a      | yes      |
| security_policies        | List of security policies to create.                          | map(object({ name = string, firewall_name = string }))                                        | n/a      | yes      |
| firewall_policies        | List of firewall policies to create.                          | map(object({ name = string, enabled = bool, mode = string, custom_rules = list(object({...})) })) | n/a      | yes      |
| resource_group_name      | The name of the resource group in which to create the firewall policies. | string                                                                                       | n/a      | yes      |
| front_door_sku_name      | The SKU name of the Azure CDN Front Door profile.             | string                                                                                       | n/a      | yes      |
| patterns_to_match        | Patterns to match in association with firewall policies.       | list(string)                                                                                 | ["/*"]   | no       |
| custom_domain_ids        | IDs of custom domains to associate with firewall policies.     | list(object({ id = string }))                                                                | []       | no       |
| endpoint_ids             | IDs of endpoints to associate with firewall policies.          | list(object({ id = string }))                                                                | []       | no       |

## Outputs

| Name                 | Description                                                   |
|----------------------|---------------------------------------------------------------|
| firewall_policy_ids  | The IDs of the Azure CDN Front Door Firewall Policies.         |
| security_policy_ids  | The IDs of the Azure CDN Front Door Security Policies.         |
