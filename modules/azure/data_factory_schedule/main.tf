resource "azurerm_data_factory_trigger_schedule" "schedule" {
  name                = var.schedule_name
  # resource_group_name = var.resource_group_name
  # data_factory_name   = var.data_factory_name
  data_factory_id     = var.data_factory_id
  # trigger_name        = azurerm_data_factory_trigger.trigger.name
  frequency           = var.frequency
  interval            = var.interval
  start_time          = var.start_time
}