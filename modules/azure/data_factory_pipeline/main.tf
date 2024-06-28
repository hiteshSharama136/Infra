resource "azurerm_data_factory_pipeline" "pipeline" {
  name                           = var.name
  data_factory_id                = var.data_factory_id
  variables                      = var.variables
  activities_json                = var.activities_json
  description                    = var.description
  annotations                    = var.annotations
  concurrency                    = var.concurrency
  folder                         = var.folder
  moniter_metrics_after_duration = var.moniter_metrics_after_duration
  parameters                     = var.parameters
}