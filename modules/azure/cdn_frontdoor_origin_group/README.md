# Terraform Module: Azure CDN Front Door Origin Group

This Terraform module provisions an Azure CDN Front Door origin group with customizable settings.


## Usage

module "cdn_frontdoor_origin_groups" {
  source                = "path_to_your_module"
  resource_group_name   = "your-resource-group-name"
  frontdoor_name        = "your-frontdoor-name"
  cdn_frontdoor_profile_id = "your-cdn-frontdoor-profile-id"
  
  origin_groups = {
    "origin-group-1" = {
      host_name  = "example1.azurewebsites.net"
      http_port  = 80
      https_port = 443
      weight     = 50
    },
    "origin-group-2" = {
      host_name  = "example2.azurewebsites.net"
      http_port  = 80
      https_port = 443
      weight     = 50
    }
    // Add more origin groups as needed
  }
}

## Inputs

| Name                                      | Description                                                               | Type       | Default | Required |
|-------------------------------------------|---------------------------------------------------------------------------|------------|---------|----------|
| `name`                                    | The name of the Azure CDN Front Door origin group.                         | string     | n/a     | yes      |
| `cdn_frontdoor_profile_id`                 | The ID of the Azure CDN Front Door profile.                                | string     | n/a     | yes      |
| `session_affinity_enabled`                 | Whether to enable session affinity for the origin group.                   | bool       | n/a     | no       |
| `lb_sample_size`                           | The number of samples to consider for load balancing.                      | number     | 4       | no       |
| `lb_successful_samples_required`           | The number of successful samples required for load balancing.              | number     | 3       | no       |
| `lb_additional_latency_in_milliseconds`    | Additional latency to add to latency-based routing in milliseconds.        | number     | 0       | no       |
| `health_probe_path`                        | The path of the health probe request.                                       | string     | "/"     | no       |
| `health_probe_request_type`                | The HTTP request type for the health probe (GET, HEAD).                    | string     | "GET"   | no       |
| `health_probe_protocol`                    | The protocol of the health probe (Http, Https).                             | string     | "Http"  | no       |
| `health_probe_interval`                    | The interval in seconds at which the health probe is conducted.            | number     | 30      | no       |


## Outputs


| Name                 | Description                                      |
|----------------------|--------------------------------------------------|
| `origin_group_id`    | The ID of the Azure CDN Front Door Origin Group. |
