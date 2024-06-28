# Terraform Module: Azure Private Endpoint

This module provisions an Azure Private Endpoint.

### Basic Usage

module "private_endpoint" {
  source = "./modules/private_endpoint"

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

  ip_configuration {
    name               = var.ip_configuration_name
    private_ip_address = var.ip_configuration_private_ip_address
    subresource_name   = var.ip_configuration_subresource_name
    member_name        = var.ip_configuration_member_name
  }

  private_dns_zone_group {
    name                 = var.private_dns_zone_group_name
    private_dns_zone_ids = var.private_dns_zone_ids
  }

  tags = var.tags
}


## Inputs

### azurerm_private_endpoint

| Name                          | Description                                              | Type    | Default | Required |
|-------------------------------|----------------------------------------------------------|---------|---------|----------|
| name                          | The name of the Private Endpoint.                         | string  | n/a     | yes      |
| location                      | The location/region where the resource is created.        | string  | n/a     | yes      |
| resource_group_name           | The name of the resource group.                           | string  | n/a     | yes      |
| subnet_id                     | The ID of the subnet to deploy the Private Endpoint.      | string  | n/a     | yes      |
| custom_network_interface_name | The name of the custom network interface.                 | string  | n/a     | no       |
| tags                          | A map of tags to apply to the Private Endpoint.           | map     | {}      | no       |

### private_service_connection

| Name                           | Description                                               | Type    | Default | Required |
|--------------------------------|-----------------------------------------------------------|---------|---------|----------|
| name                           | The name of the private service connection.                | string  | n/a     | yes      |
| private_connection_resource_id | The resource ID of the private connection.                 | string  | n/a     | yes      |
| private_connection_resource_alias | The alias name of the private connection resource.       | string  | n/a     | yes      |
| subresource_names              | List of subresources.                                     | list    | n/a     | yes      |
| is_manual_connection           | Flag to indicate if the connection is manual.             | boolean | n/a     | yes      |
| request_message                | The request message for the connection.                   | string  | n/a     | yes      |

### ip_configuration

| Name                  | Description                                       | Type    | Default | Required |
|-----------------------|---------------------------------------------------|---------|---------|----------|
| name                  | The name of the IP configuration.                 | string  | n/a     | yes      |
| private_ip_address    | The private IP address assigned to the endpoint.  | string  | n/a     | yes      |
| subresource_name      | The subresource name.                             | string  | n/a     | yes      |
| member_name           | The member name.                                  | string  | n/a     | yes      |

### private_dns_zone_group

| Name                   | Description                                         | Type    | Default | Required |
|------------------------|-----------------------------------------------------|---------|---------|----------|
| name                   | The name of the private DNS zone group.             | string  | n/a     | yes      |
| private_dns_zone_ids   | The list of private DNS zone IDs.                   | list    | n/a     | yes      |

## Outputs

### azurerm_private_endpoint

| Name                                          | Description                                                        |
|-----------------------------------------------|--------------------------------------------------------------------|
| private_endpoint_id                           | The ID of the Private Endpoint.                                     |
| network_interface_id                          | The ID of the network interface associated with the Private Endpoint. |
| private_service_connection_ip_address          | The private IP address associated with the Private Endpoint.        |
| custom_dns_configs_fqdn                       | The fully qualified domain name (FQDN) associated with the Private Endpoint. |
| private_dns_zone_configs_name                 | The name of the Private DNS Zone that the Private Endpoint belongs to. |
| private_dns_zone_configs_id                   | The ID of the Private DNS Zone Config.                              |
| private_dns_zone_configs_dns_zone_id          | The ID of the Private DNS Zone associated with the Private DNS Zone Config. |
| private_dns_zone_configs_record_sets          | Record sets associated with the Private DNS Zone Config.           |
| ip_configuration_name                        | The name of the IP Configuration associated with the Private Endpoint. |

