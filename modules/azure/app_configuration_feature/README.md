# Azure App Configuration Feature Terraform Module

This Terraform configuration sets up an Azure App Configuration Feature within a specified App Configuration store. It also outputs the ID of the created feature.


### Basic Usage Creating an App Configuration with Advanced Settings

module "app_configuration_feature" {
  source = "path_to_your_module"

  appconf_id  = "example-appconf-id"
  description = "Example feature description"
  name        = "example-feature"
  label       = "example-label"
  enabled     = true
}



## Inputs

| Name          | Description                                          | Required |
|---------------|------------------------------------------------------|----------|
| `appconf_id`  | The ID of the App Configuration store.               | yes      |
| `description` | The description of the App Configuration Feature.    | yes      |
| `name`        | The name of the App Configuration Feature.           | yes      |
| `label`       | The label of the App Configuration Feature.          | yes      |
| `enabled`     | Boolean flag to enable or disable the feature.       | yes      |

## Outputs

| Name | Description                               |
|------|-------------------------------------------|
| `id` | The ID of the App Configuration Feature    |


