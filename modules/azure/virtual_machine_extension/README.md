# Azure Virtual Machine Extension Terraform Module

This Terraform module provisions an Azure Virtual Machine Extension using the azurerm_virtual_machine_extension resource.

## Usage

module "example" {
  name                   = "exampleExtension"
  virtual_machine_id     = azurerm_virtual_machine.vm.id
  publisher              = "Microsoft.Compute"
  type                   = "CustomScriptExtension"
  type_handler_version   = "1.10"

  settings = <<SETTINGS
    {
        "script": "echo 'Hello, World!' > /tmp/hello-world.txt"
    }
SETTINGS
}
