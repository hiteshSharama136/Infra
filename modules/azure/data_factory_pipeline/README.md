# Terraform Module: Azure Data Factory Pipeline Terraform Module

This Terraform module manages an Azure Data Factory pipeline.

## Usage
module "data_factory_pipeline" {
  source            = "path_to_your_module"
  name              = "example-pipeline"
  data_factory_id   = azurerm_data_factory.example.id
  variables         = var.pipeline_variables
  activities_json   = var.pipeline_activities_json
  description       = "Example pipeline description"
  annotations       = var.pipeline_annotations
  concurrency       = var.pipeline_concurrency
  folder            = "example-folder"
  monitor_metrics_after_duration = "PT1H"
  parameters        = var.pipeline_parameters
}



## Inputs

| Name                              | Description                                                      | Type          | Default | Required |
|-----------------------------------|------------------------------------------------------------------|---------------|---------|----------|
| name                              | The name of the Azure Data Factory pipeline.                      | string        | n/a     | yes      |
| data_factory_id                   | The ID of the Azure Data Factory instance where the pipeline will be created. | string        | n/a     | yes      |
| variables                         | The variables defined in the pipeline.                            | map           | {}      | no       |
| activities_json                   | The JSON definition of activities in the pipeline.                | string        | n/a     | yes      |
| description                       | The description of the pipeline.                                  | string        | ""      | no       |
| annotations                       | The annotations associated with the pipeline.                     | list          | []      | no       |
| concurrency                       | The maximum number of concurrent pipeline runs.                   | number        | 1       | no       |
| folder                            | The folder in which to place the pipeline.                        | string        | ""      | no       |
| monitor_metrics_after_duration    | The duration after which to monitor pipeline metrics.             | string        | "PT1H"  | no       |
| parameters                        | The parameters defined for the pipeline.                          | map           | {}      | no       |
