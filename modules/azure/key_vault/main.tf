resource "azurerm_key_vault" "key_vault" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  purge_protection_enabled    = var.purge_protection_enabled
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  enabled_for_deployment      = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment

  network_acls {
    bypass         = var.network_acls_bypass
    default_action = var.network_acls_default_action

    # dynamic "ip_rules" {
    #   for_each = var.network_acls_ip_rules
    #   content {
    #     value = ip_rules.value
    #   }
    # }

    # dynamic "virtual_network_subnet_ids" {
    #   for_each = var.network_acls_virtual_network_subnet_ids
    #   content {
    #     id = virtual_network_subnet_ids.value
    #   }
    # }
  }

  tags = var.tags
}
