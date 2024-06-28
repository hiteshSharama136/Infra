# Terraform Module: Azure Network Security Group

This module creates an Azure Network Security Group (NSG) in a specified resource group.


### Basic Usage

module "network_security_group" {
  source              = "./network_security_group"  # Path to the module directory

  nsg_name            = "my-nsg"
  location            = "East US"
  resource_group_name = "my-resource-group"

  tags = {
    Env = "Production"
    App = "Web"
  }
}



## Inputs

| Name                 | Description                                                  | Type          | Default                               | Required |
|----------------------|--------------------------------------------------------------|---------------|---------------------------------------|----------|
| nsg_name              | Name of the network security group.                           | string        | n/a                                   | yes      |
| location              | Azure region where the resources will be deployed.            | string        | n/a                                   | yes      |
| resource_group_name   | Name of the resource group.                                   | string        | n/a                                   | yes      |
| tags                  | Tags to apply to the network security group.                  | map(string)   | { Env = "Production", App = "Web" }   | no       |

## Outputs

| Name    | Description                              |
|---------|------------------------------------------|
| nsg_id  | ID of the created network security group. |
