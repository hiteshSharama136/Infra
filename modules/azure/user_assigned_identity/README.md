# Azure User Assigned Managed Identity Terraform Module

This Terraform module provisions an Azure User Assigned Managed Identity.

## Usage

module "identity" {
  source = "path/to/your/module"

  location            = "eastus"
  name                = "my-user-assigned-identity"
  resource_group_name = "my-resource-group"

  tags = {
    Environment = "Production"
    Owner       = "DevOps Team"
  }
}

## Inputs

| Name                  | Description                                                            | Type     | Default | Required |
|-----------------------|------------------------------------------------------------------------|----------|---------|----------|
| location              | The location/region where the user assigned managed identity will be created. | string   | n/a     | yes      |
| name                  | The name of the user assigned managed identity.                         | string   | n/a     | yes      |
| resource_group_name   | The name of the resource group in which to create the identity.         | string   | n/a     | yes      |
| tags                  | Tags to apply to the user assigned managed identity.                    | map      | {}      | no       |

## Outputs

| Name         | Description                                            |
|--------------|--------------------------------------------------------|
| id           | The ID of the user assigned managed identity.           |
| client_id    | The client ID of the user assigned managed identity.    |
| principal_id | The principal ID of the user assigned managed identity.|
| tenant_id    | The tenant ID of the user assigned managed identity.    |
