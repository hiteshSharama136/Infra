# Azure Log Analytics Workspace Terraform Module

This Terraform module provisions an Azure Log Analytics Workspace. Below are the details for configuring and using this module.

### Basic Usage

module "log_analytics_workspace" {
  source                = "path_to_your_module"
  name                  = "example-log-analytics"
  resource_group_name   = "example-resource-group"
  location              = "East US"
  sku                   = "PerGB2018"
  retention_in_days     = 30
  
  tags = {
    environment = "production"
    department  = "IT"
  }
}


## Inputs

| Name                  | Description                                                        | Type    | Default | Required |
|-----------------------|--------------------------------------------------------------------|---------|---------|----------|
| name                  | The name of the Log Analytics Workspace.                            | string  | n/a     | yes      |
| resource_group_name   | The name of the resource group in which to create the Workspace.    | string  | n/a     | yes      |
| location              | The Azure region where the Workspace will be created.              | string  | n/a     | yes      |
| sku                   | The SKU (pricing tier) of the Log Analytics Workspace.              | string  | n/a     | yes      |
| retention_in_days     | The number of days to retain data for the Workspace.                | number  | n/a     | yes      |
| tags                  | A mapping of tags to assign to the Log Analytics Workspace.         | map     | {}      | no       |

## Outputs

| Name | Description                                      |
|------|--------------------------------------------------|
| id   | The ID of the Log Analytics Workspace.           |
