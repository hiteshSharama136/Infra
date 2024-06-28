variable "azrg_name" {
  type        = string
  description = "(Required) The name of the azurerm resource group. This needs to be unique across all group in the resource Group. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The location specifies if group will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound"
}