variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual machine"
  type        = string
}

variable "location" {
  description = "The location/region where the virtual machine will be created"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The password for the virtual machine"
  type        = string
}

variable "os_disk_size_gb" {
  description = "The size of the OS disk in gigabytes"
  type        = number
}

variable "tags" {
  description = "A mapping of tags to assign to the virtual machine"
  type        = map(string)
}

variable "additional_tags" {
  description = "Additional tags to apply to the virtual machine"
  type        = map(string)
  default     = {}
}

variable "network_interface_ids" {
  description = "List of network interface IDs to attach to the virtual machine"
  type        = list(string)
}

variable "boot_diagnostics_enabled" {
  description = "Enable boot diagnostics for the virtual machine"
  type        = bool
  default     = false
}

variable "storage_uri" {
  description = "URI of the storage account to store boot diagnostics"
  type        = string
  default     = null
}

variable "extensions" {
  description = "List of extensions to be applied to the virtual machine."
  type        = list(object({
    name                 = string
    publisher            = string
    type                 = string
    type_handler_version = string
    settings             = map(any)
  }))
  default     = []
}
