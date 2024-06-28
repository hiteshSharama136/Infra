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

output "trigger_id" {
  value       = azurerm_data_factory_trigger.trigger.id
  description = "The ID of the Data Factory Trigger"
}

output "schedule_id" {
  value       = azurerm_data_factory_trigger_schedule.schedule.id
  description = "The ID of the Data Factory Trigger Schedule"
}
