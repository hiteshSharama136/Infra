variable "vm_scale_set_extension_name" {
  type        = string
  description = "(Required) The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created."
}

variable "virtual_machine_scale_set_id" {
  type        = string
  description = "(Required) The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created."
}

variable "publisher" {
  type        = string
  description = "(Required) Specifies the Publisher of the Extension. Changing this forces a new resource to be created."
}

variable "type" {
  type        = string
  description = "(Required) Specifies the Type of the Extension. Changing this forces a new resource to be created."
}


variable "type_handler_version" {
  type        = string
  description = "(Required) Specifies the version of the extension to use, available versions can be found using the Azure CLI. "
}

variable "settings" {
  type        = string
  description = "(Optional) A JSON String which specifies Settings for the Extension."
}