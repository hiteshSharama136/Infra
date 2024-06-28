variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type = map(string)
}

variable "private_endpoint_name" {
  type        = string
  description = "Specifies the Name of the Private Endpoint"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint"
}

variable "custom_network_interface_name" {
  type        = string
  default     = null
  description = "The custom name of the network interface attached to the private endpoint"
}

variable "private_connection_name" {
  type        = string
  description = "Specifies the Name of the Private Service Connection"
}

variable "private_connection_is_manual_connection" {
  type        = bool
  default     = false
  description = "Does the Private Endpoint require Manual Approval from the remote resource owner?"
}

variable "private_connection_resource_id" {
  type        = string
  default     = null
  description = "The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to"
}

variable "private_connection_resource_alias" {
  type        = string
  default     = null
  description = "The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to"
}

variable "private_connection_subresource_names" {
  type        = list(string)
  default     = []
  description = "A list of subresource names which the Private Endpoint is able to connect to"
}

variable "private_connection_request_message" {
  type        = string
  default     = null
  description = "A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource"
}

variable "private_dns_zone_group_name" {
  type        = string
  description = "Specifies the Name of the Private DNS Zone Group"
}

variable "private_dns_zone_ids" {
  type        = list(string)
  description = "Specifies the list of Private DNS Zones to include within the private_dns_zone_group"
}

variable "ip_configuration_name" {
  type        = string
  default     = null
  description = "Specifies the Name of the IP Configuration"
}

variable "ip_configuration_private_ip_address" {
  type        = string
  default     = null
  description = "Specifies the static IP address within the private endpoint's subnet to be used"
}

variable "ip_configuration_subresource_name" {
  type        = string
  default     = null
  description = "Specifies the subresource this IP address applies to"
}

variable "ip_configuration_member_name" {
  type        = string
  default     = null
  description = "Specifies the member name this IP address applies to"
}