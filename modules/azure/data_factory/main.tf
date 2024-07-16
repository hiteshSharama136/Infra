resource "azurerm_data_factory" "data_factory" {
  name                = var.data_factory_name
  location            = var.location
  resource_group_name = var.resource_group_name

  identity {
    type = var.identity_type
  }

  tags = var.tags
}
