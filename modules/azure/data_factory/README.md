# Azure Data Factory Terraform Module

This module provisions an Azure Data Factory instance with customizable inputs.

## Usage

### Basic Usage

```hcl
module "data_factory" {
  source                   = "path_to_your_module"
  name                     = "my-data-factory"
  location                 = "East US"
  resource_group_name      = "my-resource-group"

  identity_type            = "SystemAssigned"

  tags = {
    environment = "production"
  }
}


## Inputs

| Name              | Description                                                   | Type   | Default | Required |
|-------------------|---------------------------------------------------------------|--------|---------|----------|
| `name`            | The name of the Azure Data Factory instance.                   | string | n/a     | yes      |
| `location`        | The location where the Azure Data Factory should be created.   | string | n/a     | yes      |
| `resource_group_name` | The name of the resource group in which to create the Data Factory. | string | n/a     | yes      |
| `identity_type`   | The type of identity assigned to the Data Factory.             | string | n/a     | no       |
| `tags`            | A mapping of tags to assign to the resource.                   | map    | {}      | no       |

## Outputs

| Name               | Description                              |
|--------------------|------------------------------------------|
| `data_factory_id`  | The ID of the Data Factory instance.      |
| `data_factory_name`| The name of the Data Factory instance.    |
