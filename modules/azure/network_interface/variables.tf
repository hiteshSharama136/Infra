variable "vmname" {
  type        = string
  description = "name of the vm"
}
variable "location" {
  type        = string
  description = "Azure location"
}
variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "ip_configuration" {
  type = object({ name = string, subnet_id = string, private_ip_address_allocation = string, public_ip_address_id = string })
}
variable "tags" {
  type = object({ Env = string, App = string })
}