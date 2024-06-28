resource "azurerm_app_configuration_key" "current" {
  configuration_store_id = var.appconf_id
  key                    = var.key
  label                  = var.label
  value                  = var.value
  type                   = var.type
  vault_key_reference    = var.vault_key_reference_id  
}