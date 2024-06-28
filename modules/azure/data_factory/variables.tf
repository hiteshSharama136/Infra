variable "name" {
  description = "The name of the Data Factory."
  type        = string
}

variable "location" {
  description = "The location/region where the Data Factory is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "identity_type" {
  description = "The type of identity used for the Data Factory."
  type        = string
  default     = "SystemAssigned"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
