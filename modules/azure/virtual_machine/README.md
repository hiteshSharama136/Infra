# Azure Virtual Machine Terraform Module

This Terraform module provisions an Azure Virtual Machine with customizable configurations.

## Usage

```hcl
module "virtual_machine" {
  source               = "./path/to/module"
  vm_name              = "my-vm"
  resource_group_name  = "my-resource-group"
  location             = "East US"
  vm_size              = "Standard_DS1_v2"
  admin_username       = "adminuser"
  admin_password       = "P@ssw0rd123!"
  tags = {
    Environment = "Production"
    Application = "Web"
  }
  additional_tags = {
    ManagedBy    = "Terraform"
    Environment  = "Dev"
  }
  network_interface_ids = ["nic-1", "nic-2"]
  boot_diagnostics_enabled = true
  boot_diagnostics_storage_account_uri = "https://mystorageaccount.blob.core.windows.net/"
}
