resource "azurerm_private_dns_zone" "dns_zone" {
  count               = var.create_vnet_link_only ? 0 : 1
  name                = var.name
  resource_group_name = var.dns_zone_resource_group_name
  
  tags                = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vnet_link" {
  count                 = var.dns_vnet_link_name == null ? 0 : 1
  name                  = var.dns_vnet_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = var.name
  virtual_network_id    = var.vnet_id
  registration_enabled  = var.dns_vnet_link_registration_enabled
  tags                  = var.tags

  depends_on = [ azurerm_private_dns_zone.dns_zone ]
}