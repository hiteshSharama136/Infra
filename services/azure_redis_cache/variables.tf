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

variable "redis_cache_name" {
  description = "The name of the Redis Cache"
  type        = string
  default     = "myRedisCache"
}

variable "sku_name" {
  description = "The SKU name of the Redis Cache"
  type        = string
  default     = "Standard"
}

variable "capacity" {
  description = "The capacity of the Redis Cache"
  type        = number
  default     = 1
}

variable "family" {
  description = "The family of the Redis Cache"
  type        = string
  default     = "C"
}

variable "enable_non_ssl_port" {
  description = "Enable non-SSL port for Redis Cache"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to the Redis Cache"
  type        = map(string)
  default     = {}
}
