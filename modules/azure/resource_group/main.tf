resource "azurerm_resource_group" "azrg" {
  name     = var.name
  location = var.location
  tags     = var.tags
}