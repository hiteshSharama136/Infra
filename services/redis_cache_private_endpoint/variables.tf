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

variable "tags" {
  description = "A map of tags to add to the resources"
  type        = map(string)
  default     = {}
}

variable "private_endpoint_name" {
  description = "The name of the private endpoint"
  type        = string
  default     = "redis-cache-private-endpoint"
}

variable "location" {
  description = "The location of the private endpoint"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
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

variable "private_connection_name" {
  type        = string
  description = "Specifies the Name of the Private Service Connection"
}

variable "private_dns_zone_group_name" {
  type        = string
  description = "Specifies the Name of the Private DNS Zone Group"
}

variable "private_dns_zone_ids" {
  type        = list(string)
  description = "Specifies the list of Private DNS Zones to include within the private_dns_zone_group"
}