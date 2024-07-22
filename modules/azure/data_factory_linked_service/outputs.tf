output "linked_service_id" {
  value = azurerm_data_factory_linked_custom_service.linked_service.id
  description = "The ID of the Data Factory Linked Service"
}
