# Azure CDN Front Door Origin Terraform Module

This module deploys an Azure CDN Front Door Origin with dynamic inputs.

## Usage

### Basic Usage

```hcl
module "cdn_frontdoor_origin" {
  source                        = "path_to_your_module"
  name                          = "my-cdn-origin"
  cdn_frontdoor_origin_group_id = "my-cdn-origin-group-id"
  enabled                       = true
  host_name                     = "example.com"
  http_port                     = 80
  https_port                    = 443
  origin_host_header            = "example.com"
  priority                      = 1
  weight                        = 50
  certificate_name_check_enabled= true
  private_link_request_message  = "Please approve this private link."
  private_link_location         = "East US"
  private_link_id               = "your-private-link-id"
}


## Inputs
| Name                             | Description                                                               | Required |
|----------------------------------|---------------------------------------------------------------------------|----------|
| `name`                           | The name of the CDN Front Door Origin.                                     | yes      |
| `cdn_frontdoor_origin_group_id`  | The ID of the CDN Front Door Origin Group.                                 | yes      |
| `enabled`                        | Boolean flag to enable or disable the origin.                              | no       |
| `host_name`                      | The host name of the origin.                                               | yes      |
| `http_port`                      | The HTTP port number of the origin.                                        | no       |
| `https_port`                     | The HTTPS port number of the origin.                                       | no       |
| `origin_host_header`             | The host header to send to the origin.                                     | yes      |
| `priority`                       | The priority of the origin.                                                | no       |
| `weight`                         | The weight of the origin.                                                  | no       |
| `certificate_name_check_enabled` | Boolean flag to enable or disable certificate name check for the origin.   | no       |
| `private_link_request_message`   | The request message for the private link.                                  | yes      |
| `private_link_location`          | The location of the private link.                                          | yes      |
| `private_link_id`                | The ID of the private link.                                                | yes      |

## Outputs

| Name                        | Description                                         |
|-----------------------------|-----------------------------------------------------|
| `cdn_frontdoor_origin_id`   | The ID of the CDN Front Door Origin.                |
| `cdn_frontdoor_origin_name` | The name of the CDN Front Door Origin.              |
