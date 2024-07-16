variable "redis_cache_name" {
  type        = string
  description = "(Required) The name of the Redis instance. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
}

variable "location" {
  type        = string
  description = "Resource group location"
}

variable "tags" {
  type = map(string)
}

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and free"

}

variable "family" {
  type        = string
  default     = "C"
  description = "(Required) The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)"

}

variable "capacity" {
  type        = number
  description = "(Required) The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4, 5."
}


variable "public_network_access_enabled" {
  type        = bool
  default     = false
  description = "(Optional) Whether or not public network access is allowed for this Redis Cache. true means this resource could be accessed by both public and private endpoint. false means only private endpoint access is allowed. Defaults to true."
}


variable "enable_non_ssl_port" {
  type        = bool
  default     = false
  description = "(Optional) Enable the non-SSL port (6379) - disabled by default."
}

variable "minimum_tls_version" {
  type        = string
  default     = "1.2"
  description = "(Optional) The minimum TLS version. Possible values are 1.0, 1.1 and 1.2. Defaults to 1.0."
}