variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Automation Account. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}


variable "sku_name" {
  type        = string
  default     = "Basic"
  description = "(Required) The SKU of the account. Possible values are Basic and Free."
}

variable "local_authentication_enabled" {
  type        = bool
  description = "(Optional) Whether requests using non-AAD authentication are blocked. Defaults to true."
}

variable "public_network_access_enabled" {
  type = bool
  description = "(Optional) Whether public network access is allowed for the automation account. Defaults to true."
}

variable "tags" {
  type        = map(string)
  description = "Azure Tags"
}