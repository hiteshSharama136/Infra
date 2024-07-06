resource "azurerm_virtual_machine" "vm" {
  name                          = var.vm_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  vm_size                       = var.vm_size

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  storage_os_disk {
    name              = "${var.vm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  tags                          = merge(var.tags, var.additional_tags)

  network_interface_ids         = var.network_interface_ids

  boot_diagnostics {
    enabled               = var.boot_diagnostics_enabled
    # storage_account_uri   = var.boot_diagnostics_storage_account_uri
    storage_uri    = var.storage_uri
  }

  dynamic "extension" {
    for_each = var.extensions != null ? var.extensions : []

    content {
      name                       = extension.value.name
      publisher                  = extension.value.publisher
      type                       = extension.value.type
      type_handler_version       = extension.value.type_handler_version
      settings                   = extension.value.settings
    }
  }
}
