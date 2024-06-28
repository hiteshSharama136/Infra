# Azure CDN Front Door Rule Set Terraform Module

This Terraform module manages a CDN Front Door Rule Set in Azure, associating it with a specified CDN Front Door profile.


### Basic Usage

module "cdn_front_door_rule_set" {
  source                   = "path_to_your_module"
  name                     = "example-rule-set"
  cdn_frontdoor_profile_id = "example-profile-id"
}


## Inputs

| Name                        | Description                                               | Type   | Default | Required |
|-----------------------------|-----------------------------------------------------------|--------|---------|----------|
| `name`                      | The name of the CDN Front Door Rule Set.                   | string | n/a     | yes      |
| `cdn_frontdoor_profile_id`  | The ID of the CDN Front Door profile to associate.         | string | n/a     | yes      |

## Outputs

| Name  | Description                            |
|-------|----------------------------------------|
| `id`  | The ID of the CDN Front Door Rule Set.  |
