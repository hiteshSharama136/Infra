resource "azurerm_network_interface" "nic" {
  name                = "network_interface-${var.vmname}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_configuration.name
    subnet_id                     = var.ip_configuration.subnet_id
    private_ip_address_allocation = var.ip_configuration.private_ip_address_allocation
    public_ip_address_id          = var.ip_configuration.public_ip_address_id
  }

  tags = {
    Env         = var.tags.Env
    App         = var.tags.App
  }
}