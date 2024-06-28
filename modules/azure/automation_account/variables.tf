variable "name" {
  description = "The name of the Automation Account."
  type        = string
}

variable "location" {
  description = "The location/region where the Automation Account is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "sku_name" {
  description = "The SKU name to be used for this Automation Account."
  type        = string
  default     = "Free"  # Default SKU is Free
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
