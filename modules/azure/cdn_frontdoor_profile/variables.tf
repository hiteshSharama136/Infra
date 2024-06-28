
variable "name" {
  type        = string
  description = "Specifies the name of the Front Door Profile"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where this Front Door Profile should exist"
}

variable "sku_name" {
  type        = string
  description = "The SKU for the Front Door profile. Possible values include: Standard_AzureFrontDoor, Premium_AzureFrontDoor"
  default     = "Standard_AzureFrontDoor"
  validation {
    condition     = contains(["Standard_AzureFrontDoor", "Premium_AzureFrontDoor"], var.sku_name)
    error_message = "The SKU value must be one of the following: Standard_AzureFrontDoor, Premium_AzureFrontDoor."
  }
}

variable "response_timeout_seconds" {
  type        = number
  default     = 120
  description = "Specifies the maximum response timeout in seconds. Possible values are between 16 and 240 seconds (inclusive). Defaults to 120 seconds"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Specifies a mapping of tags to assign to the resource"
}