# Azure Virtual Machine Scale Set Extension Terraform Module

This Terraform module provisions an Azure Virtual Machine Scale Set Extension using the azurerm_virtual_machine_scale_set_extension resource.

## Usage

module "example" {
  name                         = "exampleExtension"
  virtual_machine_scale_set_id = azurerm_virtual_machine_scale_set.vmss.id
  publisher                    = "Microsoft.Compute"
  type                         = "CustomScriptExtension"
  type_handler_version         = "1.10"

  settings = <<SETTINGS
    {
        "script": "echo 'Hello, World!' > /tmp/hello-world.txt"
    }
SETTINGS
}
