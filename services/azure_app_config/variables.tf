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

variable "name" {
  description = "The name of the App Configuration"
  type        = string
  default     = "myAppConfig"
}

variable "sku" {
  description = "The SKU of the App Configuration"
  type        = string
  default     = "Standard"
}

variable "feature_key" {
  description = "The key of the App Configuration feature"
  type        = string
  default     = "myFeatureKey"
}

variable "feature_name" {
  description = "The name of the App Configuration feature"
  type        = string
  default     = "myFeature"
}

variable "feature_enabled" {
  description = "Whether the feature is enabled"
  type        = bool
  default     = true
}

variable "key" {
  description = "The key of the App Configuration key-value"
  type        = string
  default     = "myKey"
}

variable "value" {
  description = "The value of the App Configuration key-value"
  type        = string
  default     = "myValue"
}

variable "tags" {
  description = "A map of tags to add to the resources"
  type        = map(string)
  default     = {}
}


variable "label" {
  type        = string
  description = "Provide the label name of the ."
}

variable "enabled" {
  type        = bool
  description = "Provide the app configuration enabled or not."
}

variable "description" {
  type        = string
  description = "Provide the description for the app configuration."
}

variable "app_configuration_name" {
  type        = string
  description = "The name of the app configuration."
}

variable "appconf_id" {
  type        = string
  description = "Provide the app configuration id."
}