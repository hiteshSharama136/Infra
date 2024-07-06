resource "azurerm_automation_account" "automation" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name

  local_authentication_enabled = var.local_authentication_enabled

  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags
}