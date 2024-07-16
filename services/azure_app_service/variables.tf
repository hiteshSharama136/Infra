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

variable "app_service_plan_name" {
  description = "The name of the App Service plan"
  type        = string
  default     = "myAppServicePlan"
}

variable "sku_tier" {
  description = "The SKU tier of the App Service plan"
  type        = string
  default     = "Standard"
}

variable "sku_size" {
  description = "The SKU size of the App Service plan"
  type        = string
  default     = "S1"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "myAppService"
}

variable "always_on" {
  description = "Should the App Service be always on?"
  type        = bool
  default     = true
}

variable "app_settings" {
  description = "A map of app settings for the App Service"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to the App Service"
  type        = map(string)
  default     = {}
}
