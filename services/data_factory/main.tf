module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "data_factory" {
  source = "../../modules/azure/data_factory"

  data_factory_name   = var.data_factory_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  tags                = var.tags
}

module "integration_runtime" {
  source = "../../modules/azure/data_factory_integration_runtime"

  data_factory_name   = module.data_factory.name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  data_factory_integration_runtime_name  = var.data_factory_integration_runtime_name
  data_factory_id     = var.data_factory_id
  linked_service_name  = var.linked_service_name
  description         = var.description
  compute_type        = var.compute_type
  core_count          = var.core_count
  time_to_live        = var.time_to_live
  tags                = var.tags

  os_type = "Linux"
  node_count = 3
  node_size = "Standard_DS2_v2"
}

module "linked_service" {
  source = "../../modules/azure/data_factory_linked_service"

  data_factory_id     = var.data_factory_id
  data_factory_linked_service_name  = var.data_factory_linked_service_name
  connection_string   = var.connection_string

  type                  = var.type 
}

module "pipeline" {
  source = "../../modules/azure/data_factory_pipeline"

  data_factory_name   = module.data_factory.name
  data_factory_pipeline_name  = var.data_factory_pipeline_name
  data_factory_id    = var.data_factory_id
}

module "trigger_schedule" {
  source = "../../modules/azure/data_factory_schedule"

  name                = var.trigger_schedule_name
  data_factory_name   = module.data_factory.name
  data_factory_id     = var.data_factory_id
  data_factory_pipeline_name   = var.data_factory_pipeline_name
  resource_group_name = module.resource_group.resource_group_name

  frequency           = var.frequency
  interval            = var.interval
  start_window = var.start_window
  end_window   = var.end_window
  start_time  = var.start_time
  schedule_name   = var.schedule_name
}

module "trigger" {
  source = "../../modules/azure/data_factory_trigger"

  data_factory_name     = module.data_factory.name
  resource_group_name = module.resource_group.resource_group_name
  data_factory_trigger_name  = var.data_factory_trigger_name
  data_factory_pipeline_name   = var.data_factory_pipeline_name
  data_factory_id     = var.data_factory_id
  
    start_window = var.start_window
    end_window   = var.end_window
    frequency = var.frequency
    interval  = var.interval

    start_time  = var.start_time
    schedule_name   = var.schedule_name
}
