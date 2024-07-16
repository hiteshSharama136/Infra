variable "arm_tenant_id" {
  type        = string
  description = "The tenant Id of azure provider"
}

variable "arm_subscription_id" {
  type        = string
  description = "The subscription Id of azure provider"
}

variable "arm_client_id" {
  type        = string
  description = "The client Id of azure provider spn"
}

variable "arm_client_secret" {
  type        = string
  sensitive   = true
  description = "The client secret of azure provider spn"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "myContainerRegistry"
}

variable "sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Enable admin user for Azure Container Registry"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to the Azure Container Registry"
  type        = map(string)
  default     = {}
}
