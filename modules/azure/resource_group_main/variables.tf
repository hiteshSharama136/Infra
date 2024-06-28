variable "name" {
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