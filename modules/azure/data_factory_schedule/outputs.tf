output "trigger_id" {
  value       = azurerm_data_factory_trigger.trigger.id
  description = "The ID of the Data Factory Trigger."
}

output "schedule_id" {
  value       = azurerm_data_factory_trigger_schedule.schedule.id
  description = "The ID of the Data Factory Trigger Schedule."
}
