# Terraform Module: Azure Resource Group

This module provisions an Azure Resource Group.

## Usage

resource "azurerm_resource_group" "main" {
  name     = var.name
  location = var.location
  tags     = var.tags
}


## Inputs

### azurerm_resource_group

| Name       | Description                                           | Type    | Default | Required |
|------------|-------------------------------------------------------|---------|---------|----------|
| name  | The name of the Azure Resource Group.                 | string  | n/a     | yes      |
| location   | The location/region where the Resource Group will be created. | string  | n/a     | yes      |

## Outputs

### azurerm_resource_group

| Name     | Description                            |
|----------|----------------------------------------|
| id  | The ID of the Azure Resource Group.    |
