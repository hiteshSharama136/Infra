variable "public_ip_name" {
  type        = string
  description = "The name of the public ip"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "resource_group_name" {
  type        = string
  description = "The name of resource group"
}

variable "allocation_method" {
  type        = string
  description = "Azure location "
  default     = "Static"
}

variable "sku" {
  type        = string
  description = "sku"
  default     = "Standard"
}

variable "tags" {
  type = map(string)
}