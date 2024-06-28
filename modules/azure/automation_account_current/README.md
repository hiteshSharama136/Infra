# Azure Automation Account Resource Terraform Module

This repository contains a Terraform module that manages an Azure Automation Account. The configuration sets up an Automation Account in a specified resource group with specified settings.

## Inputs
| Name                         | Description                                               | Type         | Default | Required |
|------------------------------|-----------------------------------------------------------|--------------|---------|----------|
| `name`                       | The name of the Automation Account.                       | string       | n/a     | yes      |
| `location`                   | The location where the Automation Account will be created.| string       | n/a     | yes      |
| `resource_group_name`        | The name of the resource group in which to create the Automation Account. | string | n/a | yes |
| `sku_name`                   | The SKU of the Automation Account.                        | string       | n/a     | yes      |
| `local_authentication_enabled`| Boolean flag to enable or disable local authentication.   | bool         | true    | no       |
| `public_network_access_enabled`| Boolean flag to enable or disable public network access.  | bool         | true    | no       |
| `tags`                       | A mapping of tags to assign to the resource.              | map(string)  | {}      | no       |


## Outputs

| Name | Description                        |
|------|------------------------------------|
| `id` | The ID of the Automation Account.  |


### Basic Usage Creating an Azure Automation Account Resource with Advanced Settings

module "automation_account" {
  source                  = "path_to_your_module"
  name                    = "example-automation-account"
  location                = "East US"
  resource_group_name     = "example-resource-group"
  sku_name                = "Basic"
  local_authentication_enabled = true
  public_network_access_enabled = true
  tags = {
    environment = "production"
  }
}
