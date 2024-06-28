resource "azurerm_private_endpoint" "private_endpoint" {
  name                          = var.private_endpoint_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  subnet_id                     = var.subnet_id
  custom_network_interface_name = var.custom_network_interface_name

  private_service_connection {
    name                              = var.private_connection_name
    private_connection_resource_id    = var.private_connection_resource_id
    private_connection_resource_alias = var.private_connection_resource_alias
    subresource_names                 = var.private_connection_subresource_names
    is_manual_connection              = var.private_connection_is_manual_connection
    request_message                   = var.private_connection_request_message
  }

  dynamic "private_dns_zone_group" {
    for_each = var.private_dns_zone_group_name == null ? [] : [1]
    content {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.private_dns_zone_ids
    }
  }

  dynamic "ip_configuration" {
    for_each = var.ip_configuration_name == null ? [] : [1]
    content {
      name               = var.ip_configuration_name
      private_ip_address = var.ip_configuration_private_ip_address
      subresource_name   = var.ip_configuration_subresource_name
      member_name        = var.ip_configuration_member_name
    }
  }

  lifecycle {
    ignore_changes = [
      subnet_id,
    ]
  }

  tags = var.tags
}