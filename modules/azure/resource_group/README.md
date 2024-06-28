# Terraform Module: Azure Resource Group

This module provisions an Azure Resource Group.

## Usage


resource "azurerm_resource_group" "azrg" {
  name     = var.azrg_name
  location = var.location
}


## Inputs

### azurerm_resource_group

| Name       | Description                                           | Type    | Default | Required |
|------------|-------------------------------------------------------|---------|---------|----------|
| azrg_name  | The name of the Azure Resource Group.                 | string  | n/a     | yes      |
| location   | The location/region where the Resource Group will be created. | string  | n/a     | yes      |

## Outputs

### azurerm_resource_group

| Name     | Description                            |
|----------|----------------------------------------|
| azrg_id  | The ID of the Azure Resource Group.    |
