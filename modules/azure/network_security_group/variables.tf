variable "nsg_name" {
  type        = string
  description = "(Required) Specifies the name of the network security group. Changing this forces a new resource to be created."
}
variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "canadacentral"
}
variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the network security group. Changing this forces a new resource to be created."
}
variable "tags" {
  type = object({ Env = string, App = string })
}