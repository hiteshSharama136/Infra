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
  type        = string
  description = "(Required) Provide resource group name"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to add to the App Service"
  type        = map(string)
  default     = {}
}

variable "application_gateway" {
  description = "Name of the Azure Application Gateway"
  type        = string
}

variable "sku_name" {
  description = "SKU name for the Azure Application Gateway"
  type        = string
}

variable "sku_tier" {
  description = "SKU tier for the Azure Application Gateway"
  type        = string
}

variable "sku_capacity" {
  description = "Capacity of the SKU for the Azure Application Gateway"
  type        = number
}

variable "subnet_id" {
  description = "ID of the subnet to deploy the Azure Application Gateway"
  type        = string
}

variable "frontend_port" {
  description = "Frontend port for the Azure Application Gateway"
  type        = number
}

variable "public_ip_address_id" {
  description = "ID of the public IP address for the Azure Application Gateway"
  type        = string
}

variable "backend_http_port" {
  description = "Backend HTTP port for the Azure Application Gateway"
  type        = number
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

variable "backend_address_pool_name" {
  description = "The name of the backend address pool."
  type        = string
}

variable "frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration."
  type        = string
}

variable "gateway_ip_configuration_name" {
  description = "The name of the Gateway IP configuration."
  type        = string
}

variable "frontend_port_name" {
  description = "The name of the frontend port."
  type        = string
}