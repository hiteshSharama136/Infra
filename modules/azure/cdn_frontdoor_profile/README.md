# Azure CDN Front Door Profile Terraform Module

This module deploys an Azure CDN Front Door Profile with dynamic inputs.


### Basic Usage

```hcl
module "cdn_frontdoor_profile" {
  source                  = "path_to_your_module"
  name                    = "my-cdn-front-door"
  resource_group_name     = "my-resource-group"
  sku_name                = "Standard_AzureFrontDoor"
  response_timeout_seconds = 60
  tags = {
    environment = "production"
  }
}

## Inputs

| Name                      | Description                                                    | Type        | Default | Required |
|---------------------------|----------------------------------------------------------------|-------------|---------|----------|
| `name`                    | The name of the CDN Front Door Profile.                        | string      | n/a     | yes      |
| `resource_group_name`     | The name of the resource group in which to create the profile. | string      | n/a     | yes      |
| `sku_name`                | The pricing tier for this CDN Front Door profile.              | string      | n/a     | yes      |
| `response_timeout_seconds`| The response timeout in seconds for the CDN Front Door.        | number      | 60      | no       |
| `tags`                    | A mapping of tags to assign to the resource.                   | map(string) | {}      | no       |

## Outputs

| Name                       | Description                                             |
|----------------------------|---------------------------------------------------------|
| `cdn_frontdoor_profile_id` | The ID of the CDN Front Door Profile.                   |
| `cdn_frontdoor_profile_name` | The name of the CDN Front Door Profile.               |
