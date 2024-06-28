resource "azurerm_application_insights" "current" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = var.workspace_id
  application_type    = var.application_type
}