# Azure Automation Account Resource Terraform Module

This repository contains a Terraform module that manages an Azure Automation Account. The configuration sets up an Automation Account in a specified resource group with specified settings.


### Basic Usage Creating an Azure Automation Account Resource with Advanced Settings

module "automation_account" {
  source                = "path_to_your_module"
  name                  = var.name
  location              = var.location
  resource_group_name   = var.resource_group_name
  sku_name              = var.sku_name
  tags                  = var.tags
}

## Inputs

| Name                  | Description                                                             | Type   | Default | Required |
|-----------------------|-------------------------------------------------------------------------|--------|---------|----------|
| `name`                | The name of the Application Insights component                          | string | n/a     | yes      |
| `location`            | The location/region where the Application Insights component is created | string | n/a     | yes      |
| `resource_group_name` | The name of the resource group in which to create the component         | string | n/a     | yes      |
| `workspace_id`        | The ID of the Log Analytics Workspace to link to the component          | string | null    | no       |
| `application_type`    | The type of application being monitored                                 | string | n/a     | yes      |

## Outputs

| Name                  | Description                                                             |
|-----------------------|-------------------------------------------------------------------------|
| `id`                  | The ID of the Application Insights component                            |
| `app_id`              | The App ID associated with this Application Insights component          |
| `instrumentation_key` | The Instrumentation Key for this Application Insights component. (Sensitive) |
