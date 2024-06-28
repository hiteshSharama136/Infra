# Azure Application Gateway Terraform Module

This module deploys an Azure Application Gateway with dynamic inputs.

## Usage

### Basic Usage

```hcl
module "application_gateway" {
  source                  = "path_to_your_module"
  name                    = "my-app-gateway"
  resource_group_name     = "my-resource-group"
  location                = "East US"
  sku_name                = "Standard_v2"
  sku_tier                = "Standard_v2"
  sku_capacity            = 2
  gateway_ip_configuration_name = "my-gateway-ip-config"
  subnet_id               = "your-subnet-id"
  frontend_port_name      = "frontendPort"
  frontend_port           = 80
  frontend_ip_configuration_name = "frontendIPConfig"
  public_ip_address_id    = "your-public-ip-id"
  backend_address_pool_name = "backendPool"
  backend_addresses       = []
  backend_http_settings_name = "httpSettings"
  backend_http_settings_cookie_based_affinity = "Disabled"
  backend_http_settings_port = 80
  backend_http_settings_protocol = "Http"
  backend_http_settings_request_timeout = 20
  http_listener_name      = "httpListener"
  http_listener_protocol  = "Http"
  request_routing_rule_name = "rule1"
  request_routing_rule_type = "Basic"
  tags = {
    environment = "production"
  }
}

## Inputs

| Name                                       | Description                                                                      |
|--------------------------------------------|----------------------------------------------------------------------------------|
| `name`                                     | The name of the Application Gateway.                                             |
| `resource_group_name`                      | The name of the resource group in which to create the Application Gateway.       |
| `location`                                 | The Azure region where the Application Gateway will be created.                  |
| `sku_name`                                 | The name of the SKU to use for this Application Gateway.                         |
| `sku_tier`                                 | The tier of the SKU to use for this Application Gateway.                         |
| `sku_capacity`                             | The capacity of the SKU to use for this Application Gateway.                     |
| `gateway_ip_configuration_name`            | The name of the Gateway IP configuration.                                        |
| `subnet_id`                                | The ID of the subnet to associate with the Application Gateway.                  |
| `frontend_port_name`                       | The name of the frontend port.                                                   |
| `frontend_port`                            | The port number of the frontend port.                                            |
| `frontend_ip_configuration_name`           | The name of the frontend IP configuration.                                       |
| `public_ip_address_id`                     | The ID of the public IP address to associate with the Application Gateway.       |
| `backend_address_pool_name`                | The name of the backend address pool.                                            |
| `backend_addresses`                        | A list of backend addresses.                                                     |
| `backend_http_settings_name`               | The name of the backend HTTP settings.                                           |
| `backend_http_settings_cookie_based_affinity`| The cookie-based affinity setting for the backend HTTP settings.                 |
| `backend_http_settings_port`               | The port number for the backend HTTP settings.                                   |
| `backend_http_settings_protocol`           | The protocol for the backend HTTP settings.                                      |
| `backend_http_settings_request_timeout`    | The request timeout for the backend HTTP settings.                               |
| `http_listener_name`                       | The name of the HTTP listener.                                                   |
| `http_listener_protocol`                   | The protocol for the HTTP listener.                                              |
| `request_routing_rule_name`                | The name of the request routing rule.                                            |
| `request_routing_rule_type`                | The type of the request routing rule.                                            |
| `tags`                                     | A mapping of tags to assign to the resource.                                     |


## Outputs

| Name                                           | Description                                              |
|------------------------------------------------|----------------------------------------------------------|
| `application_gateway_id`                       | The ID of the Application Gateway.                       |
| `application_gateway_name`                     | The name of the Application Gateway.                     |
| `application_gateway_frontend_ip_configuration`| The frontend IP configuration of the Application Gateway.|
