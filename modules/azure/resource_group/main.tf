resource "azurerm_resource_group" "azrg" {
  name     = var.azrg_name
  location = var.location
}