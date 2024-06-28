# Terraform Module: Azure Network Security Rule

This module creates a network security rule within an Azure Network Security Group (NSG).


### Basic Usage

module "network_security_rule" {
  source                       = "./modules/network_security_rule"
  nsr_name                     = "allow-http"
  priority                     = 100
  direction                    = "Inbound"
  access                       = "Allow"
  protocol                     = "Tcp"
  source_port_range            = "*"
  destination_port_range       = "80"
  source_address_prefix        = "*"
  destination_address_prefix   = "*"
  resource_group_name          = azurerm_resource_group.example.name
  network_security_group_name  = azurerm_network_security_group.example.name
}


## Inputs

| Name                           | Description                                   | Type    | Default | Required |
|--------------------------------|-----------------------------------------------|---------|---------|----------|
| nsr_name                       | Name of the network security rule.             | string  | n/a     | yes      |
| priority                       | Priority of the security rule.                 | number  | n/a     | yes      |
| direction                      | Direction of the traffic (Inbound or Outbound).| string  | n/a     | yes      |
| access                         | Action (Allow or Deny).                        | string  | n/a     | yes      |
| protocol                       | Protocol (Tcp, Udp, *).                        | string  | n/a     | yes      |
| source_port_range              | Source port range.                             | string  | n/a     | yes      |
| destination_port_range         | Destination port range.                        | string  | n/a     | yes      |
| source_address_prefix          | Source IP address range.                       | string  | n/a     | yes      |
| destination_address_prefix     | Destination IP address range.                  | string  | n/a     | yes      |
| resource_group_name            | Name of the resource group where NSG resides.  | string  | n/a     | yes      |
| network_security_group_name    | Name of the network security group.            | string  | n/a     | yes      |

## Outputs

| Name                     | Description                                     |
|--------------------------|-------------------------------------------------|
| network_security_rule_id | ID of the created network security rule.        |
