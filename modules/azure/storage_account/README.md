# Terraform Module: Azure Storage Account Terraform Module

This Terraform module provisions an Azure Storage Account.

## Usage

module "storage_account" {
  source = "path/to/your/module"

  st_name                = "mystorageaccount"
  resource_group_name    = "myresourcegroup"
  location               = "East US"
  account_tier           = "Standard"
  account_replication_type = "LRS"

  tags = {
    Env = "dev"
    App = "myapp"
  }
}


## Inputs

| Name                       | Description                                                            | Type     | Default | Required |
|----------------------------|------------------------------------------------------------------------|----------|---------|----------|
| st_name                    | The name of the storage account.                                        | string   | n/a     | yes      |
| resource_group_name        | The name of the resource group in which to create the storage account.  | string   | n/a     | yes      |
| location                   | The location for the storage account.                                   | string   | n/a     | yes      |
| account_tier               | The storage account tier. Valid options are Standard or Premium.        | string   | n/a     | yes      |
| account_replication_type   | The replication type to use for the storage account. Valid options are LRS, ZRS, GRS, RA-GRS. | string   | n/a     | yes      |
| tags                       | A map of tags to apply to the storage account.                          | map      | {}      | no       |

## Outputs

| Name       | Description                               |
|------------|-------------------------------------------|
| id         | The ID of the storage account.             |
| name       | The name of the storage account.           |
| location   | The location of the storage account.       |
