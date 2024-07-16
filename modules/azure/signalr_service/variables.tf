
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the SignalR service"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the SignalR service exists"
}

variable "tags" {
  type = map(string)
}

variable "signalr_service_name" {
  type        = string
  description = "The name of the SignalR service. Changing this forces a new resource to be created"
}

variable "sku_name" {
  type        = string
  default     = "Free_F1"
  description = "Specifies which tier to use. Valid values are Free_F1, Standard_S1 and Premium_P1"

  validation {
    condition     = var.sku_name == "Free_F1" || var.sku_name == "Standard_S1" || var.sku_name == "Premium_P1"
    error_message = "The value for sku_name can only be \"Free_F1\" or \"Standard_S1\" or \"Premium_P1\"!"
  }
}

variable "sku_capacity" {
  type        = number
  default     = 1
  description = "Specifies the number of units associated with this SignalR service. Valid values are 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 60, 70, 80, 90 and 100"
}

variable "cors_allowed_origins" {
  type        = list(string)
  default     = []
  description = "A list of origins which should be able to make cross-origin calls. * can be used to allow all calls"
}

variable "public_network_access_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable public network access?"
}

variable "connectivity_logs_enabled" {
  type        = bool
  default     = false
  description = "Specifies if Connectivity Logs are enabled or not"
}

variable "messaging_logs_enabled" {
  type        = bool
  default     = false
  description = "Specifies if Messaging Logs are enabled or not"
}

variable "live_trace_enabled" {
  type        = bool
  default     = false
  description = "Specifies if Live Trace is enabled or not"
}

variable "http_request_logs_enabled" {
  type        = bool
  default     = false
  description = "Specifies if Http Request Logs are enabled or not"
}

variable "local_auth_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable local auth?"
}

variable "aad_auth_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable AAD auth?"
}

variable "tls_client_cert_enabled" {
  type        = bool
  default     = false
  description = "Whether to request client certificate during TLS handshake?"
}

variable "service_mode" {
  type        = string
  default     = "Default"
  description = "Specifies the service mode. Possible values are Classic, Default and Serverless"

  validation {
    condition     = var.service_mode == "Default" || var.service_mode == "Classic" || var.service_mode == "Serverless"
    error_message = "The value for service_mode can only be \"Default\" or \"Classic\" or \"Serverless\"!"
  }
}

# Upstream Endpoint variables

variable "ue_url_template" {
  type        = string
  default     = null
  description = "The upstream URL Template. This can be a url or a template such as http://host.com/{hub}/api/{category}/{event}"
}

variable "ue_category_pattern" {
  type        = string
  default     = null
  description = "The categories to match on, or * for all"
}

variable "ue_event_pattern" {
  type        = string
  default     = null
  description = "The events to match on, or * for all"
}

variable "ue_hub_pattern" {
  type        = string
  default     = null
  description = "The hubs to match on, or * for all"
}

variable "ue_user_assigned_identity_id" {
  type        = string
  default     = null
  description = "Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported"
}