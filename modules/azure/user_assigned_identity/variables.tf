variable "user_assigned_identity_name" {
  type        = string
  description = "(Required) Provide the identity name"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) Provide resource group name"
}

variable "location" {
  type        = string
  description = "(Required) Provide resource location"
}

variable "tags" {
  type = map(string)
}