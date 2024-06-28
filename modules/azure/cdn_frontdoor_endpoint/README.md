# Azure CDN Front Door Endpoint Terraform Module

This module deploys an Azure CDN Front Door Endpoint with dynamic inputs.



### Basic Usage

```hcl
module "cdn_frontdoor_endpoint" {
  source                   = "path_to_your_module"
  name                     = "my-cdn-endpoint"
  cdn_frontdoor_profile_id = "my-cdn-profile-id"
  enabled                  = true
  tags = {
    environment = "production"
  }
}

## Inputs

| Name                      | Description                                                    | Type        | Default | Required |
|---------------------------|----------------------------------------------------------------|-------------|---------|----------|
| `name`                    | The name of the CDN Front Door Endpoint.                       | string      | n/a     | yes      |
| `cdn_frontdoor_profile_id`| The ID of the CDN Front Door Profile.                          | string      | n/a     | yes      |
| `enabled`                 | Boolean flag to enable or disable the endpoint.                | bool        | true    | no       |
| `tags`                    | A mapping of tags to assign to the resource.                   | map(string) | {}      | no       |

## Outputs

| Name                       | Description                                             |
|----------------------------|---------------------------------------------------------|
| `cdn_frontdoor_endpoint_id` | The ID of the CDN Front Door Endpoint.                   |
| `cdn_frontdoor_endpoint_name` | The name of the CDN Front Door Endpoint.               |
