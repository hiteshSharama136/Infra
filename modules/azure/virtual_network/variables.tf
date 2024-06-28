variable "remote_name" {
  type        = string
  description = "(Required) The name of the virtual network. This needs to be unique across all Network in the virtual network. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The location specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
}