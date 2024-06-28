variable "name" {
  description = "The name of the Application Gateway."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Gateway."
  type        = string
}

variable "location" {
  description = "The Azure region where the Application Gateway will be created."
  type        = string
}

variable "sku_name" {
  description = "The name of the SKU to use for this Application Gateway."
  type        = string
}

variable "sku_tier" {
  description = "The tier of the SKU to use for this Application Gateway."
  type        = string
}

variable "sku_capacity" {
  description = "The capacity of the SKU to use for this Application Gateway."
  type        = number
}

variable "gateway_ip_configuration_name" {
  description = "The name of the Gateway IP configuration."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the Application Gateway."
  type        = string
}

variable "frontend_port_name" {
  description = "The name of the frontend port."
  type        = string
}

variable "frontend_port" {
  description = "The port number of the frontend port."
  type        = number
}

variable "frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration."
  type        = string
}

variable "public_ip_address_id" {
  description = "The ID of the public IP address to associate with the Application Gateway."
  type        = string
}

variable "backend_address_pool_name" {
  description = "The name of the backend address pool."
  type        = string
}

variable "backend_addresses" {
  description = "A list of backend addresses."
  type        = list(object({
    ip_address = string
    fqdn       = string
  }))
  default = []
}

variable "backend_http_settings_name" {
  description = "The name of the backend HTTP settings."
  type        = string
}

variable "backend_http_settings_cookie_based_affinity" {
  description = "The cookie-based affinity setting for the backend HTTP settings."
  type        = string
}

variable "backend_http_settings_port" {
  description = "The port number for the backend HTTP settings."
  type        = number
}

variable "backend_http_settings_protocol" {
  description = "The protocol for the backend HTTP settings."
  type        = string
}

variable "backend_http_settings_request_timeout" {
  description = "The request timeout for the backend HTTP settings."
  type        = number
}

variable "http_listener_name" {
  description = "The name of the HTTP listener."
  type        = string
}

variable "http_listener_protocol" {
  description = "The protocol for the HTTP listener."
  type        = string
}

variable "request_routing_rule_name" {
  description = "The name of the request routing rule."
  type        = string
}

variable "request_routing_rule_type" {
  description = "The type of the request routing rule."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
