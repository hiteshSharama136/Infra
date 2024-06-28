variable "azvnet_name" {
  type        = string
  description = "(Required) Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created."
}

variable "vnet_name" {
  type        = string
  description = "(Required) The name of the virtual network. This needs to be unique across all all Network in the azurerm virtual network peering. Changing this forces a new resource to be created."
}

variable "remote_virtual_network_id" {
   type        = string
   description = "(Required) The ID of the remote virtual network. Changing this forces a new resource to be created."
}

variable "allow_virtual_network_access" {
   type        = string
   description = "(Optional) Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to true."
}