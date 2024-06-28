# Terraform Module: Azure Private DNS Zone

This module creates an Azure Private DNS Zone and optionally links it to a virtual network.


### Basic Usage

module "private_dns_zone" {
  source                        = "./modules/private_dns_zone"
  name                          = "example.com"
  resource_group_name           = azurerm_resource_group.example.name
  dns_zone_resource_group_name  = azurerm_resource_group.dns.name
  create_vnet_link_only         = false
  tags                          = {
    Env = "Production"
    App = "MyApp"
  }
  
  # Optional parameters for DNS Virtual Network Link
  dns_vnet_link_name            = "dns-vnet-link"
  vnet_id                       = azurerm_virtual_network.example.id
  dns_vnet_link_registration_enabled = true
}

## Inputs

### azurerm_private_dns_zone

| Name                         | Description                                             | Type    | Default | Required |
|------------------------------|---------------------------------------------------------|---------|---------|----------|
| name                         | The name of the Private DNS Zone.                        | string  | n/a     | yes      |
| resource_group_name          | The name of the resource group to which the zone belongs.| string  | n/a     | yes      |
| dns_zone_resource_group_name | The name of the resource group for DNS Zone.             | string  | n/a     | yes      |
| create_vnet_link_only        | Whether to create only the VNet link (true/false).       | bool    | false   | no       |
| tags                         | A map of tags to apply to the Private DNS Zone.          | map     | {}      | no       |

### azurerm_private_dns_zone_virtual_network_link

| Name                              | Description                                            | Type    | Default | Required                      |
|-----------------------------------|--------------------------------------------------------|---------|---------|-------------------------------|
| dns_vnet_link_name                 | The name of the DNS Virtual Network Link.               | string  | n/a     | yes (if create_vnet_link_only is false) |
| vnet_id                           | The ID of the virtual network to link with.             | string  | n/a     | yes (if create_vnet_link_only is false) |
| dns_vnet_link_registration_enabled| Whether to register virtual network (true/false).       | bool    | false   | no                            |
| resource_group_name               | The name of the resource group to which the link belongs.| string  | n/a     | yes                           |
| private_dns_zone_name             | The name of the Private DNS Zone.                       | string  | n/a     | yes                           |
| tags                              | A map of tags to apply to the DNS Virtual Network Link. | map     | {}      | no                            |

## Outputs

### azurerm_private_dns_zone

| Name                  | Description                                   |
|-----------------------|-----------------------------------------------|
| private_dns_zone_id   | The ID of the Private DNS Zone.                |
| private_dns_zone_name | The name of the Private DNS Zone.              |

### azurerm_private_dns_zone_virtual_network_link

| Name               | Description                                   |
|--------------------|-----------------------------------------------|
| dns_vnet_link_id   | The ID of the DNS Virtual Network Link.        |
| dns_vnet_link_name | The name of the DNS Virtual Network Link.      |
