resource "azurerm_data_factory_linked_custom_service" "linked_service" {
  name                  = var.data_factory_linked_service_name
  data_factory_id       = var.data_factory_id
  type                  = var.type
  description           = var.description

  # connection_string = var.connection_string

  type_properties_json  = var.type_properties_json
  additional_properties = var.additional_properties

  dynamic "integration_runtime" {
    for_each = var.integration_runtime_name == null ? [] : [1]
    content {
      name       = var.integration_runtime_name
      parameters = var.integration_runtime_parameters
    }
  }

  parameters  = var.parameters
  annotations = var.annotations
}