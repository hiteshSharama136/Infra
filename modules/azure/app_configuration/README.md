# Azure App Configuration Terraform Module

This module deploys an Azure App Configuration resource with optional settings for identity, encryption, and network access controls.


### Basic Usage Creating an App Configuration with Advanced Settings

module "app_configuration" {
  source                  = "path_to_your_module"
  resource_group_name     = "example-resource-group"
  location                = "East US"
  name                    = "example-app-configuration"
  sku_name                = "Standard"
  local_auth_enabled      = true
  public_network_access   = "Enabled"
  purge_protection_enabled = true
  soft_delete_retention_days = 30
  key_vault_key_identifier = "https://example-key-vault.vault.azure.net/keys/example-key/abcd1234"
  identity_client_id       = "12345678-1234-1234-1234-123456789012"
  tags = {
    environment = "production"
  }
}



## Inputs
| Name                        | Description                                                    | Type         | Default    | Required |
|-----------------------------|----------------------------------------------------------------|--------------|------------|----------|
| `name`                      | The name of the App Configuration.                             | string       | n/a        | yes      |
| `resource_group_name`       | The name of the resource group in which to create the resource.| string       | n/a        | yes      |
| `location`                  | The location/region where the App Configuration is created.    | string       | n/a        | yes      |
| `sku_name`                  | The SKU of the App Configuration.                              | string       | n/a        | yes      |
| `local_auth_enabled`        | Boolean flag to enable or disable local authentication.        | bool         | true       | no       |
| `public_network_access`     | Enable or disable public network access.                       | string       | "Enabled"  | no       |
| `purge_protection_enabled`  | Boolean flag to enable or disable purge protection.            | bool         | false      | no       |
| `soft_delete_retention_days`| The number of days to retain soft deleted resources.           | number       | 7          | no       |
| `key_vault_key_identifier`  | The identifier of the Key Vault key for encryption.            | string       | null       | no       |
| `identity_client_id`        | The client ID of the managed identity.                         | string       | null       | no       |
| `tags`                      | A mapping of tags to assign to the resource.                   | map(string)  | {}         | no       |

## Outputs

| Name                          | Description                                             |
|-------------------------------|---------------------------------------------------------|
| `app_configuration_id`        | The ID of the App Configuration.                        |
| `app_configuration_name`      | The name of the App Configuration.                      |
| `app_configuration_endpoint`  | The endpoint of the App Configuration.                  |
