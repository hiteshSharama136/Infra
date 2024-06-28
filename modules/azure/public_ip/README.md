# Terraform Module: Azure Public IP

This module provisions an Azure Public IP address.

## Usage


resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku

  tags = var.tags
}

## Inputs

### azurerm_public_ip

| Name                | Description                                    | Type    | Default   | Required |
|---------------------|------------------------------------------------|---------|-----------|----------|
| name                | The name of the Public IP address.             | string  | n/a       | yes      |
| location            | The location/region where the resource is created. | string  | n/a       | yes      |
| resource_group_name | The name of the resource group.                | string  | n/a       | yes      |
| allocation_method   | The allocation method (Static or Dynamic).     | string  | "Dynamic" | no       |
| sku                 | The SKU (Standard or Basic).                   | string  | "Standard"| no       |
| tags                | A map of tags to apply to the Public IP address. | map     | {}        | no       |

## Outputs

### azurerm_public_ip

| Name       | Description                                    |
|------------|------------------------------------------------|
| ip_id      | The ID of the Public IP address.               |
| ip_address | The IP address value that was allocated.       |

