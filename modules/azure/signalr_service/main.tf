resource "azurerm_signalr_service" "signalr" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = var.sku_name
    capacity = var.sku_capacity
  }

  dynamic "cors" {
    for_each = length(var.cors_allowed_origins) == 0 ? [] : [1]

    content {
      allowed_origins = var.cors_allowed_origins
    }
  }

  public_network_access_enabled = var.public_network_access_enabled
  connectivity_logs_enabled     = var.connectivity_logs_enabled
  messaging_logs_enabled        = var.messaging_logs_enabled
  http_request_logs_enabled     = var.http_request_logs_enabled
  local_auth_enabled            = var.local_auth_enabled
  aad_auth_enabled              = var.aad_auth_enabled
  tls_client_cert_enabled       = var.tls_client_cert_enabled
  service_mode                  = var.service_mode

  tags = var.tags
}