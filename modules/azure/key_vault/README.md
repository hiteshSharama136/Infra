# Azure Key Vault Terraform Module

This module provisions an Azure Key Vault with customizable inputs.

## Usage

### Basic Usage

```hcl
module "key_vault" {
  source                        = "path_to_your_module"
  name                          = "my-key-vault"
  resource_group_name           = "my-resource-group"
  location                      = "East US"
  tenant_id                     = "tenant-id"
  sku_name                      = "standard"
  purge_protection_enabled      = true
  enabled_for_disk_encryption   = true
  enabled_for_deployment        = true
  enabled_for_template_deployment = true

  network_acls_bypass           = "AzureServices"
  network_acls_default_action   = "Deny"

  tags = {
    environment = "production"
  }
}



## Inputs
| Name                             | Description                                                | Default | 
|----------------------------------|------------------------------------------------------------|---------|
| `name`                           | Name of the Azure Key Vault.                               | n/a     |
| `location`                       | Location where the Key Vault will be created.              | n/a     |
| `resource_group_name`            | Name of the resource group for the Key Vault.              | n/a     |
| `tenant_id`                      | Tenant ID where the Key Vault will be created.             | n/a     |
| `sku_name`                       | SKU (pricing tier) of the Key Vault.                       | n/a     |
| `purge_protection_enabled`       | Enable purge protection for the Key Vault.                 | n/a     |
| `enabled_for_disk_encryption`    | Enable disk encryption for the Key Vault.                  | n/a     |
| `enabled_for_deployment`         | Enable Key Vault for resource deployment.                  | n/a     |
| `enabled_for_template_deployment`| Enable Key Vault for template deployment.                  | n/a     |
| `network_acls_bypass`            | Network traffic allowed to bypass network rules.           | n/a     |
| `network_acls_default_action`    | Default action when no rules match `network_acls_bypass`. | n/a     |
| `tags`                           | Tags to assign to the Key Vault.                           | {}      |

## Outputs

| Name                      | Description                                           |
|---------------------------|-------------------------------------------------------|
| `key_vault_id`            | The ID of the Azure Key Vault.                         |
| `key_vault_name`          | The name of the Azure Key Vault.                       |
| `key_vault_vault_uri`     | The URI of the Azure Key Vault.                        |
