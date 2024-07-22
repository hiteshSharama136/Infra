resource "azurerm_data_factory_integration_runtime_self_hosted" "integration_runtime" {
  name                = var.data_factory_integration_runtime_name
  data_factory_id     = var.data_factory_id
  # resource_group_name = var.resource_group_name
  # data_factory_name   = var.data_factory_name
  description         = var.description
  # location            = var.location

  # compute_properties {
  #   data_flow_properties {
  #     compute_type = var.compute_type
  #     core_count   = var.core_count
  #     time_to_live = var.time_to_live
  #   }
  # }
}
