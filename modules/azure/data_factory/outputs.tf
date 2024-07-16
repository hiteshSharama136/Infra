output "data_factory_id" {
  description = "The ID of the Data Factory."
  value       = azurerm_data_factory.data_factory.id
}

output "data_factory_name" {
  description = "The name of the Data Factory."
  value       = azurerm_data_factory.data_factory.name
}
