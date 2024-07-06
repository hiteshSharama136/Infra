resource "azurerm_container_registry" "container_registry" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  admin_enabled = var.admin_enabled

  public_network_access_enabled = var.public_network_access_enabled

  quarantine_policy_enabled = var.quarantine_policy_enabled

  tags = var.tags
}
