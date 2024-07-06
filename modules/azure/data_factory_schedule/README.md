# Terraform Module: Azure Data Factory Trigger Terraform Module

This Terraform module provisions an Azure Data Factory Trigger along with its associated schedule.

## Usage
module "data_factory_trigger" {
  source                = "path_to_your_module"
  name                  = "example-trigger"
  resource_group_name   = "example-resource-group"
  data_factory_name     = "example-data-factory"
  schedule_name         = "example-schedule"
  frequency             = "Month"
  interval              = 1
  start_time            = "2024-06-01T00:00:00Z"
  start_window          = "00:00:00"
  end_window            = "23:59:59"
}


## Inputs

| Name               | Description                                                       | Type    | Default | Required |
|--------------------|-------------------------------------------------------------------|---------|---------|----------|
| name               | The name of the Data Factory Trigger.                              | string  | n/a     | yes      |
| resource_group_name | The name of the resource group in which to create the trigger.     | string  | n/a     | yes      |
| data_factory_name  | The name of the Azure Data Factory instance.                       | string  | n/a     | yes      |
| schedule_name      | The name of the Data Factory Trigger Schedule.                     | string  | n/a     | yes      |
| frequency          | The frequency of recurrence for the trigger schedule.              | string  | n/a     | yes      |
| interval           | The interval of recurrence for the trigger schedule.              | number  | n/a     | yes      |
| start_time         | The start time for the trigger schedule in UTC format.            | string  | n/a     | yes      |
| start_window       | The start window for the trigger in HH:mm format.                 | string  | n/a     | yes      |
| end_window         | The end window for the trigger in HH:mm format.                   | string  | n/a     | yes      |

## Outputs

| Name        | Description                                          |
|-------------|------------------------------------------------------|
| trigger_id  | The ID of the created Data Factory Trigger.          |
| schedule_id | The ID of the created Data Factory Trigger Schedule. |
