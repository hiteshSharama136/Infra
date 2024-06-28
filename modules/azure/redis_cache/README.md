# Terraform Module: Azure Redis Cache

This module provisions an Azure Redis Cache instance.

## Usage


resource "azurerm_redis_cache" "current" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name

  public_network_access_enabled = var.public_network_access_enabled
  enable_non_ssl_port           = var.enable_non_ssl_port
  minimum_tls_version           = var.minimum_tls_version

  redis_configuration {
    # Additional configuration settings can be added here if needed
  }

  tags = var.tags
}

## Inputs

### azurerm_redis_cache

| Name                     | Description                                           | Type    | Default | Required |
|--------------------------|-------------------------------------------------------|---------|---------|----------|
| name                     | The name of the Redis Cache.                           | string  | n/a     | yes      |
| location                 | The location/region where the resource is created.    | string  | n/a     | yes      |
| resource_group_name      | The name of the resource group.                        | string  | n/a     | yes      |
| capacity                 | The capacity of the Redis Cache (number of shards).    | number  | n/a     | yes      |
| family                   | The family of the Redis Cache (C, P, E).               | string  | n/a     | yes      |
| sku_name                 | The SKU name of the Redis Cache (Basic, Standard, Premium). | string  | n/a     | yes      |
| public_network_access_enabled | Boolean flag to enable public network access.       | bool    | false   | no       |
| enable_non_ssl_port      | Boolean flag to enable non-SSL port (6379).            | bool    | false   | no       |
| minimum_tls_version      | The minimum TLS version required for the Redis Cache.  | string  | "1.2"   | no       |
| tags                     | A map of tags to apply to the Redis Cache.             | map     | {}      | no       |

## Outputs

### azurerm_redis_cache

| Name       | Description                                    |
|------------|------------------------------------------------|
| id         | The ID of the Redis Cache.                     |
| hostname   | The Hostname of the Redis Cache instance.      |
