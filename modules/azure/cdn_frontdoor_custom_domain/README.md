# Terraform Module: Azure CDN Front Door Custom Domain

This Terraform module creates Azure CDN Front Door custom domains with dynamic TLS configurations.


## Usage

module "cdn_frontdoor_custom_domain" {
  source                = "path_to_your_module"
  frontdoor_name        = "your-frontdoor-name"
  resource_group_name   = "your-resource-group-name"
  custom_domain_name    = {
    "example.com" = {
      frontdoor_host_name     = "example.azurefd.net"
      frontend_endpoint_name  = "frontend-endpoint"
    }
    "sub.example.com" = {
      frontdoor_host_name     = "sub.azurefd.net"
      frontend_endpoint_name  = "frontend-endpoint"
    }
  }
  cdn_frontdoor_profile_id = "your-cdn-frontdoor-profile-id"

  tls_settings = {
    "example.com" = {
      minimum_tls_version = "1.2"
      certificate_name    = "example_cert"
      key_vault_secret_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.KeyVault/vaults/example-keyvault/secrets/example-secret"
    }
    "sub.example.com" = {
      minimum_tls_version = "1.2"
      certificate_name    = "sub_example_cert"
      key_vault_secret_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.KeyVault/vaults/example-keyvault/secrets/sub_example-secret"
    }
  }
}

## Inputs

| Name                      | Description                                                             | Type                                                                 | Default | Required |
|---------------------------|-------------------------------------------------------------------------|----------------------------------------------------------------------|---------|----------|
| `frontdoor_name`          | The name of the Azure Front Door instance.                               | string                                                               | n/a     | yes      |
| `resource_group_name`     | The name of the resource group in which the Azure Front Door instance exists. | string                                                               | n/a     | yes      |
| `custom_domain_name`      | The custom domain names to be associated with the Azure Front Door instance. | map(string)                                                          | n/a     | yes      |
| `cdn_frontdoor_profile_id`| The ID of the Azure CDN Front Door profile.                               | string                                                               | n/a     | yes      |
| `tls_settings`            | TLS settings for custom domains.                                          | map(object({ minimum_tls_version = string, certificate_name = string, key_vault_secret_id = string })) | n/a     | yes      |

## Outputs

| Name                  | Description                                      |
|-----------------------|--------------------------------------------------|
| `custom_domain_id`    | The ID(s) of the Azure CDN Front Door Custom Domain. |
| `custom_domain_name`  | The name(s) of the Azure CDN Front Door Custom Domain. |
