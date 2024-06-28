# Azure Network Interface Terraform Module

This Terraform module manages an Azure Network Interface (NIC).


### Basic Usage

module "network_interface" {
  source              = "./network_interface"  # Path to the module directory

  name                = "nic-1"
  location            = "East US"
  resource_group_name = "my-resource-group"

  ip_configuration = {
    name                          = "ipconfig1"
    subnet_id                     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/publicIPAddresses/my-public-ip"
  }

  tags = {
    Env = "Production"
    App = "Web"
  }
}

## Inputs

| Name                  | Description                                                        | Type    | Default | Required |
|-----------------------|--------------------------------------------------------------------|---------|---------|----------|
| name                  | The name of the network interface.                                  | string  | n/a     | yes      |
| location              | The location/region where the network interface will be deployed.   | string  | n/a     | yes      |
| resource_group_name   | The name of the resource group in which the network interface will reside. | string  | n/a     | yes      |
| ip_configuration      | Configuration block for the IP configuration of the network interface. | object  | n/a     | yes      |
| tags                  | Tags to apply to the network interface resources.                   | map     | {}      | no       |

### IP Configuration Block

| Name                              | Description                                                           | Type    | Default | Required |
|-----------------------------------|-----------------------------------------------------------------------|---------|---------|----------|
| name                              | The name of the IP configuration.                                      | string  | n/a     | yes      |
| subnet_id                         | The ID of the subnet to associate with the IP configuration.           | string  | n/a     | yes      |
| private_ip_address_allocation     | The allocation method of the private IP address (Dynamic or Static).   | string  | n/a     | yes      |
| public_ip_address_id              | The ID of the associated public IP address (optional).                 | string  | ""      | no       |

## Outputs

| Name                 | Description                                                      |
|----------------------|------------------------------------------------------------------|
| id                   | The ID of the network interface.                                  |
| name                 | The name of the network interface.                                |
| location             | The location/region of the network interface.                     |
| resource_group       | The name of the resource group of the network interface.          |
| ip_configuration     | The IP configuration block of the network interface.              |
