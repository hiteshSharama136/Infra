# Terraform Module: Azure PostgreSQL Flexible Server

This module creates an Azure PostgreSQL Flexible Server.


### Basic Usage

module "postgresql_server" {
  source                 = "./modules/postgresql_server"
  name                   = "my-flexible-server"
  resource_group_name    = azurerm_resource_group.example.name
  location               = "East US"
  postgres_version       = "12"
  delegated_subnet_id    = azurerm_subnet.example.id
  private_dns_zone_id    = azurerm_private_dns_zone.example.id
  administrator_login    = "admin_user"
  administrator_password = "P@ssw0rd!"
  zone                   = "1"

  storage_mb             = 51200
  sku_name               = "Standard_D4s_v3"
}

## Inputs

| Name                  | Description                                                        | Type    | Default | Required |
|-----------------------|--------------------------------------------------------------------|---------|---------|----------|
| name                  | The name of the PostgreSQL Flexible Server.                         | string  | n/a     | yes      |
| resource_group_name   | The name of the resource group to which the server belongs.         | string  | n/a     | yes      |
| location              | The location/region where the server will be deployed.              | string  | n/a     | yes      |
| postgres_version      | The PostgreSQL server version.                                      | string  | n/a     | yes      |
| delegated_subnet_id   | The ID of the subnet to delegate to.                                 | string  | n/a     | yes      |
| private_dns_zone_id   | The ID of the private DNS zone to associate with the server.        | string  | n/a     | yes      |
| administrator_login   | The administrator username for the PostgreSQL server.               | string  | n/a     | yes      |
| administrator_password| The administrator password for the PostgreSQL server.               | string  | n/a     | yes      |
| zone                  | The availability zone for the PostgreSQL server.                    | string  | n/a     | yes      |
| storage_mb            | The storage capacity of the PostgreSQL server in MB.                | number  | n/a     | yes      |
| sku_name              | The SKU name for the PostgreSQL server.                             | string  | n/a     | yes      |

## Outputs

| Name                     | Description                                      |
|--------------------------|--------------------------------------------------|
| postgresql_server_id     | The ID of the PostgreSQL Flexible Server.        |
| postgresql_server_fqdn   | The FQDN of the PostgreSQL Flexible Server.      |
