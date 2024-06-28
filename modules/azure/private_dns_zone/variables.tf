variable "name" {
  type        = string
  description = "(Required) The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."
}

variable "dns_zone_resource_group_name" {
  type        = string
  description = "(Required) Specifies the resource group where the vnet to be linked exists."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
}

variable "dns_vnet_link_name" {
  type        = string
  default     = null
  description = "The name of the Private DNS Zone Virtual Network Link"
}

variable "vnet_id" {
  type        = string
  default     = null
  description = "The ID of the Virtual Network that should be linked to the DNS Zone"
}

variable "dns_vnet_link_registration_enabled" {
  type        = bool
  default     = false
  description = "Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?"
}

variable "create_vnet_link_only" {
  type        = bool
  default     = false
  description = "Specifies whether to create DNS zone with vnet link, or only vnet link"
}