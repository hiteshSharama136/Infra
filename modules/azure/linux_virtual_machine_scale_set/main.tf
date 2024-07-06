resource "azurerm_linux_virtual_machine_scale_set" "linux_virtual_machine" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  instances           = var.instances
  admin_username      = var.admin_username

  single_placement_group = false

  #custom_data   = var.custom_data

  admin_ssh_key {
    username   = var.admin_username
    public_key = var.public_key
  }

  source_image_reference {
    publisher = var.source_image_reference.publisher
    offer     = var.source_image_reference.offer
    sku       = var.source_image_reference.sku
    version   = var.source_image_reference.version
  }

  os_disk {
    storage_account_type = var.os_disk.storage_account_type
    caching              = var.os_disk.caching
  }

  network_interface {
    name    = "${var.name}-interface"
    primary = true

    ip_configuration {
      name      = "${var.name}-internal"
      primary   = true
      subnet_id = var.subnet_id
    }
  }

  tags = var.tags
}