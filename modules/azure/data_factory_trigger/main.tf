resource "azurerm_data_factory_trigger" "trigger" {
  name                = var.name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.data_factory_name
  schedule {
    start_window = var.start_window
    end_window   = var.end_window
    recurrence {
      frequency = var.frequency
      interval  = var.interval
    }
  }
  
  depends_on = [azurerm_data_factory_trigger_schedule.schedule]
}
