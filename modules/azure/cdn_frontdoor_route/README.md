## Azure CDN Front Door Route Terraform Module

This Terraform module manages an Azure CDN Front Door Route within a specified Front Door instance.

### Basic Usage

module "cdn_frontdoor_route" {
  source                          = "path_to_your_module"
  name                            = "example-route"
  cdn_frontdoor_endpoint_id       = "example-endpoint-id"
  cdn_frontdoor_origin_group_id   = "example-origin-group-id"
  cdn_frontdoor_origin_ids        = ["example-origin-id"]

  enabled                         = true
  supported_protocols             = ["Http", "Https"]
  patterns_to_match               = ["/*"]
  forwarding_protocol             = "MatchRequest"
  link_to_default_domain          = false
  https_redirect_enabled          = true
  cdn_frontdoor_custom_domain_ids = ["example-custom-domain-id"]
}


## Inputs

| Name                               | Description                                                                 | Type          | Default | Required |
|------------------------------------|-----------------------------------------------------------------------------|---------------|---------|----------|
| `name`                             | The name of the CDN Front Door Route.                                        | string        | n/a     | yes      |
| `cdn_frontdoor_endpoint_id`         | The ID of the CDN Front Door endpoint to associate with the route.           | string        | n/a     | yes      |
| `cdn_frontdoor_origin_group_id`     | The ID of the CDN Front Door origin group to associate with the route.       | string        | n/a     | yes      |
| `cdn_frontdoor_origin_ids`          | List of CDN Front Door origin IDs associated with the route.                 | list(string)  | n/a     | yes      |
| `enabled`                          | Boolean flag to enable or disable the CDN Front Door route.                   | bool          | n/a     | yes      |
| `supported_protocols`              | List of supported protocols for the route.                                   | list(string)  | n/a     | yes      |
| `patterns_to_match`                | List of patterns to match for the route.                                      | list(string)  | n/a     | yes      |
| `forwarding_protocol`              | The protocol to use for forwarding the request.                               | string        | n/a     | yes      |
| `link_to_default_domain`           | Boolean flag to link to the default domain of the Front Door.                 | bool          | n/a     | yes      |
| `https_redirect_enabled`           | Boolean flag to enable or disable HTTPS redirect for the route.               | bool          | n/a     | yes      |
| `cdn_frontdoor_custom_domain_ids`  | List of custom domain IDs associated with the route.                          | list(string)  | n/a     | yes      |


## Outputs

| Name               | Description                                     |
|--------------------|-------------------------------------------------|
| `id`               | The ID of the created CDN Front Door Route.      |
