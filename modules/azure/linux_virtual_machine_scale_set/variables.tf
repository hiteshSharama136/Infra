
variable "name" {
  type        = string
  description = "(Required) The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created."
}

variable "admin_username" {
  type        = string
  description = "(Required) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created."
}

variable "instances" {
  type        = string
  default     = 0
  description = "(Required) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created."
}

variable "sku" {
  type        = string
  description = "(Required) The Virtual Machine SKU for the Scale Set, such as Standard_F2."
}


variable "public_key" {
  type        = string
  description = "(Required) The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format."
}

variable "source_image_reference" {
  type        =  object({publisher=string, offer=string, sku=string, version=string})
  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
  description = <<EOF
    publisher - (Required) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
    offer - (Required) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
    sku - (Required) Specifies the SKU of the image used to create the virtual machines.
    version - (Required) Specifies the version of the image used to create the virtual machines.
  EOF
}

variable "os_disk" {
  type        =  object({storage_account_type=string, caching=string})
  default = {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
  description = <<EOF
  caching - (Required) The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite.

  storage_account_type - (Required) The Type of Storage Account which should back this the Internal OS Disk. Possible values include Standard_LRS, StandardSSD_LRS, StandardSSD_ZRS, Premium_LRS and Premium_ZRS. Changing this forces a new resource to be created.
  EOF
}

variable "subnet_id" {
  type = string
  description = "(Optional) The ID of the Subnet which this IP Configuration should be connected to."
}

# variable "custom_data" {
#   type = string
#   default = ""
#   description = "(Optional) The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set."
# }

variable "tags" {
  type        = map(string)
  description = "Azure Tags"
}