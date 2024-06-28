# Azure SQL Server Terraform Module

This Terraform module provisions an Azure SQL Server with customizable configurations.

## Usage

### Basic Usage

```hcl
module "sql_server" {
  source                    = "path_to_your_module"
  name                      = "my-sql-server"
  location                  = "eastus"
  resource_group_name       = "my-resource-group"
  administrator_login       = "sqladmin"
  administrator_login_password = "P@ssw0rd1234!"
  version                   = "12.0"
  tags = {
    environment = "production"
    project     = "my-project"
  }
}


## Inputs

| Name                         | Description                                        | Type   | Default | Required |
|------------------------------|----------------------------------------------------|--------|---------|----------|
| `name`                       | Name of the SQL Server.                            | string | n/a     | yes      |
| `location`                   | Azure region for SQL Server deployment.            | string | n/a     | yes      |
| `resource_group_name`        | Resource group name for SQL Server deployment.     | string | n/a     | yes      |
| `administrator_login`        | Administrator login for SQL Server.                | string | n/a     | yes      |
| `administrator_login_password` | Administrator login password for SQL Server.       | string | n/a     | yes      |
| `version`                    | SQL Server version to deploy.                      | string | n/a     | yes      |
| `identity_type`              | Type of identity for SQL Server.                   | string | n/a     | no       |
| `tags`                       | Tags to assign to the SQL Server resource.         | map    | {}      | no       |


## Outputs

| Name                   | Description                                   |
|------------------------|-----------------------------------------------|
| `mssql_server_id`      | The ID of the SQL Server.                     |
| `mssql_server_name`    | The name of the SQL Server.                   |
