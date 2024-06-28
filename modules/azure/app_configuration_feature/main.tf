resource "azurerm_app_configuration_feature" "current" {
  configuration_store_id = var.appconf_id
  description            = var.description
  name                   = var.name
  label                  = var.label
  enabled                = var.enabled
}