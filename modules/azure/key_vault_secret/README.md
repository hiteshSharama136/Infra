# Azure Key Vault Secret Terraform Module

This module provisions a secret in Azure Key Vault with customizable inputs.

## Usage

### Basic Usage

```hcl
module "key_vault_secret" {
  source         = "path_to_your_module"
  name           = "my-secret"
  value          = "my-secret-value"
  key_vault_id   = "/subscriptions/subscription-id/resourceGroups/my-resource-group/providers/Microsoft.KeyVault/vaults/
  my-key-vault"
  content_type   = "application/json"
  
  tags = {
    environment = "production"
    project     = "my-project"
  }
}


## Inputs

| Name           | Description                                                      | Type   | Default | Required |
|----------------|------------------------------------------------------------------|--------|---------|----------|
| `name`         | The name of the Azure Key Vault secret.                           | string | n/a     | yes      |
| `value`        | The value of the secret.                                          | string | n/a     | yes      |
| `key_vault_id` | The ID of the Azure Key Vault where the secret will be stored.   | string | n/a     | yes      |
| `content_type` | The content type of the secret value.                              | string | n/a     | no       |
| `tags`         | A mapping of tags to assign to the secret.                        | map    | {}      | no       |

## Outputs

| Name               | Description                                   |
|--------------------|-----------------------------------------------|
| `id`               | The ID of the Azure Key Vault secret.          |
| `versionless_id`   | The version ID of the Azure Key Vault secret.  |
