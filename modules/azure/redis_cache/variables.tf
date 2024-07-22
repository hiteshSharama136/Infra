variable "private_endpoint_name" {
  description = "The name of the private endpoint"
  type        = string
}

variable "location" {
  description = "The location of the private endpoint"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the private endpoint"
  type        = string
}

variable "redis_cache_id" {
  description = "The ID of the Azure Redis Cache instance"
  type        = string
}

variable "private_dns_zone_name" {
  description = "The name of the private DNS zone for Redis Cache"
  type        = string
}

variable "virtual_network_id" {
  description = "The ID of the virtual network to link with the private DNS zone"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
