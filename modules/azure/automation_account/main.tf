resource "azurerm_automation_account" "automation" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name

  tags = var.tags
}
