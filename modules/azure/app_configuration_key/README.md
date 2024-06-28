# Azure App Configuration Key Resource Terraform Module

This repository contains a Terraform module that manages an Azure App Configuration Key. The configuration allows you to set up a key-value pair in Azure App Configuration, optionally using a reference to an Azure Key Vault.


### Basic Usage Creating an App Configuration Key Resource with Advanced Settings

module "app_configuration_key" {
  source                   = "path_to_your_module"
  configuration_store_id   = var.appconf_id
  key                      = var.key
  label                    = var.label
  value                    = var.value
  type                     = var.type
  vault_key_reference_id   = var.vault_key_reference_id
}


## Inputs

| Name                     | Description                                     | Type   | Default | Required |
|--------------------------|-------------------------------------------------|--------|---------|----------|
| `appconf_id`             | The ID of the App Configuration Store           | string | n/a     | yes      |
| `key`                    | The key for the configuration setting           | string | n/a     | yes      |
| `label`                  | The label for the configuration setting         | string | null    | no       |
| `value`                  | The value for the configuration setting         | string | n/a     | yes      |
| `type`                   | The type of the configuration setting           | string | "string"| no       |
| `vault_key_reference_id` | The reference ID for the Key Vault key          | string | null    | no       |

## Outputs

| Name  | Description             |
|-------|-------------------------|
| `id`  | The ID of the key       |
