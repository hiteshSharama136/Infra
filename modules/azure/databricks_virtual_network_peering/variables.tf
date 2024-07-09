variable "azdvnet_name" {
  type        = string
  description = "(Required) Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created."
}

variable "workspace_id" {
   type        = string
   description = "(Required) The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created."
}

variable "remote_address_space_prefixes" {
   type        = string
   description = "(Required) A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created."
}

variable "remote_virtual_network_id" {
   type        = string
   description = "(Required) The ID of the remote virtual network. Changing this forces a new resource to be created."
}

variable "allow_virtual_network_access" {
   type        = string
   description = "(Optional) Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to true."
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}