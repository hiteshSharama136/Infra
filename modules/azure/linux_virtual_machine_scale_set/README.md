# Azure Linux Virtual Machine Scale Set Terraform Module

This Terraform module provisions an Azure Virtual Machine Scale Set running Linux. Below are the details for configuring and using this module.
## Usage

### Basic Usage
module "linux_vm_scale_set" {
  source                = "path_to_your_module"
  name                  = "example-scale-set"
  resource_group_name   = "example-resource-group"
  location              = "East US"
  sku                   = "Standard_DS1_v2"
  instances             = 3
  admin_username        = "adminuser"
  public_key            = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEArN9mR5L... your_ssh_public_key_here"
  
  source_image_reference = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_disk = {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  subnet_id = "/subscriptions/subscription_id/resourceGroups/rg_name/providers/Microsoft.Network/virtualNetworks/vnet_name/subnets/subnet_name"

  tags = {
    environment = "production"
    department  = "IT"
  }
}


## Inputs

| Name                      | Description                                                        | Type    | Default | Required |
|---------------------------|--------------------------------------------------------------------|---------|---------|----------|
| name                      | The name of the Virtual Machine Scale Set.                          | string  | n/a     | yes      |
| resource_group_name       | The name of the resource group in which to create the Scale Set.    | string  | n/a     | yes      |
| location                  | The Azure region where the Scale Set will be created.               | string  | n/a     | yes      |
| sku                       | The SKU (size) of the virtual machines in the Scale Set.            | string  | n/a     | yes      |
| instances                 | The number of virtual machines (instances) in the Scale Set.        | number  | n/a     | yes      |
| admin_username            | The username for logging into the virtual machines.                 | string  | n/a     | yes      |
| public_key                | The SSH public key to be used for authentication.                   | string  | n/a     | yes      |
| source_image_reference    | The reference details for the source image of the virtual machines. | object  | n/a     | yes      |
| os_disk                   | Configuration for the operating system disk of the virtual machines.| object  | n/a     | yes      |
| subnet_id                 | The ID of the subnet where the virtual machines will be deployed.   | string  | n/a     | yes      |
| tags                      | A mapping of tags to assign to the Virtual Machine Scale Set.       | map     | {}      | no       |

## Outputs

| Name | Description                                      |
|------|--------------------------------------------------|
| id   | The ID of the Virtual Machine Scale Set.         |
