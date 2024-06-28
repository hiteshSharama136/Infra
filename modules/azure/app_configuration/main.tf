resource "azurerm_app_configuration" "app_configuration" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  sku                        = var.sku_name
  local_auth_enabled         = var.local_auth_enabled
  public_network_access      = var.public_network_access
  purge_protection_enabled   = var.purge_protection_enabled
  soft_delete_retention_days = var.soft_delete_retention_days

  identity {
    type = "SystemAssigned"
  }

  dynamic "encryption" {
    for_each = var.key_vault_key_identifier == null ? [] : [1]
    content {
      key_vault_key_identifier = var.key_vault_key_identifier
      identity_client_id       = var.identity_client_id
    }
  }

  tags = var.tags
}
