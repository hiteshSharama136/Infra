resource "azurerm_signalr_service_network_acl" "signalr_nacl" {
  signalr_service_id = var.signalr_service_id
  default_action     = var.default_action

  public_network {
    allowed_request_types = var.default_action == "Allow" ? null : var.allowed_request_types
    denied_request_types  = var.default_action == "Deny" ? null : var.denied_request_types
  }

  dynamic "private_endpoint" {
    for_each = var.private_endpoint

    content {
      id                    = private_endpoint.value.id
      allowed_request_types = var.default_action == "Allow" ? null : private_endpoint.value.allowed_request_types
      denied_request_types  = var.default_action == "Deny" ? null : private_endpoint.value.denied_request_types
    }
  }
}
