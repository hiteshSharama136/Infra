# Azure Databricks Workspace Terraform Module

This module creates an Azure Databricks workspace with customizable inputs.

## Usage

### Basic Usage

```hcl
module "databricks_workspace" {
  source                   = "path_to_your_module"
  databricks_name          = "my-databricks-workspace"
  resource_group_name      = "my-resource-group"
  location                 = "East US"
  sku_name                 = "standard"
}


## Inputs

| Name                  | Description                                                        | Type   | Default | Required |
|-----------------------|--------------------------------------------------------------------|--------|---------|----------|
| `databricks_name`     | The name of the Azure Databricks workspace.                         | string | n/a     | yes      |
| `resource_group_name` | The name of the resource group in which to create the workspace.    | string | n/a     | yes      |
| `location`            | The location where the workspace should be created.                 | string | n/a     | yes      |
| `sku_name`            | The SKU (pricing tier) of the Azure Databricks workspace.           | string | n/a     | yes      |

## Outputs

| Name               | Description                                         |
|--------------------|-----------------------------------------------------|
| `databricks_id`    | The ID of the Azure Databricks workspace created.   |
