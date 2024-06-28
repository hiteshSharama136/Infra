# Terraform Module: Azure SignalR Service

This module provisions an Azure SignalR Service using the azurerm_signalr_service resource in Terraform.

## Usage

module "signalr_service" {
  source = "./path/to/your/module"
  
  signalr_name            = var.signalr_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  sku_name                = var.sku_name
  sku_capacity            = var.sku_capacity
  cors_allowed_origins    = var.cors_allowed_origins
  public_network_access_enabled = var.public_network_access_enabled
  connectivity_logs_enabled     = var.connectivity_logs_enabled
  messaging_logs_enabled        = var.messaging_logs_enabled
  http_request_logs_enabled     = var.http_request_logs_enabled
  local_auth_enabled            = var.local_auth_enabled
  aad_auth_enabled              = var.aad_auth_enabled
  tls_client_cert_enabled       = var.tls_client_cert_enabled
  service_mode                  = var.service_mode
  tags                          = var.tags
}

## Inputs

### azurerm_signalr_service

| Name                           | Description                                                             | Type      | Default   | Required |
|--------------------------------|-------------------------------------------------------------------------|-----------|-----------|----------|
| name                           | The name of the SignalR service.                                         | string    | n/a       | yes      |
| location                       | The Azure region where the SignalR service should be created.            | string    | n/a       | yes      |
| resource_group_name            | The name of the resource group in which to create the SignalR service.   | string    | n/a       | yes      |
| sku_name                       | The name of the SKU for the SignalR service.                             | string    | n/a       | yes      |
| sku_capacity                   | The capacity of the SKU for the SignalR service.                         | number    | n/a       | yes      |
| cors_allowed_origins           | List of allowed origins for CORS.                                        | list      | []        | no       |
| public_network_access_enabled  | Whether public network access is enabled for the SignalR service.        | bool      | true      | no       |
| connectivity_logs_enabled      | Whether connectivity logs are enabled for the SignalR service.           | bool      | false     | no       |
| messaging_logs_enabled         | Whether messaging logs are enabled for the SignalR service.              | bool      | false     | no       |
| http_request_logs_enabled      | Whether HTTP request logs are enabled for the SignalR service.           | bool      | false     | no       |
| local_auth_enabled             | Whether local authentication is enabled for the SignalR service.         | bool      | true      | no       |
| aad_auth_enabled               | Whether Azure Active Directory authentication is enabled.                | bool      | false     | no       |
| tls_client_cert_enabled        | Whether TLS client certificate authentication is enabled.                | bool      | false     | no       |
| service_mode                   | The mode of the SignalR service (default or Serverless).                 | string    | "default" | no       |
| tags                           | A mapping of tags to assign to the resource.                              | map       | {}        | no       |

## Outputs

### azurerm_signalr_service

| Name                           | Description                                                             |
|--------------------------------|-------------------------------------------------------------------------|
| id                             | The ID of the SignalR service.                                           |
| hostname                       | The fully qualified domain name (FQDN) of the SignalR service.           |
| ip_address                     | The publicly accessible IP address of the SignalR service.               |
| public_port                    | The publicly accessible port for client/browser use.                     |
| server_port                    | The publicly accessible port for server side use.                        |
| primary_access_key             | The primary access key for connecting to the SignalR service.            |
| primary_connection_string      | The primary connection string for connecting to the SignalR service.    |
| secondary_access_key           | The secondary access key for connecting to the SignalR service.          |
| secondary_connection_string    | The secondary connection string for connecting to the SignalR service.  |
