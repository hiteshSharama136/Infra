# Terraform Module: Azure SignalR Service Network ACL Module

This Terraform module provisions network access control rules for an Azure SignalR Service.

## Usage

module "signalr_network_acl" {
  source = "./path/to/your/module"

  signalr_service_id = azurerm_signalr_service.signalr.id
  default_action     = "Allow"

  public_network {
    allowed_request_types = ["GET", "POST"]
    denied_request_types  = []
  }

  private_endpoint {
    "example_endpoint" = {
      id                    = azurerm_private_endpoint.private_endpoint.id
      allowed_request_types = []
      denied_request_types  = ["DELETE"]
    }
    # Add more private endpoints as needed
  }
}


