resource "azurerm_app_configuration_feature" "app_config_feature" {
  configuration_store_id = var.appconf_id
  description            = var.description
  name                   = var.app_config_feature_name
  label                  = var.label
  enabled                = var.enabled
}