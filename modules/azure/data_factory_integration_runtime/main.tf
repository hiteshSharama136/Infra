resource "azurerm_data_factory_integration_runtime_self_hosted" "integration_runtime" {
  name                = var.name
  data_factory_id     = var.data_factory_id
  # resource_group_name = var.resource_group_name
  # data_factory_name   = var.data_factory_name
  description         = var.description
  # location            = var.location
}
