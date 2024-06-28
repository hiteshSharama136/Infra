variable "signalr_service_id" {
  type = string
  description = "The ID of the SignalR service"
}

variable "default_action" {
  type = string
  default = "Deny"
  description = "The default action to control the network access when no other rule matches. Possible values are Allow and Deny"

  validation {
    condition     = var.default_action == "Allow" || var.default_action == "Deny"
    error_message = "The value for default_action can only be \"Allow\" or \"Deny\"!"
  }
}

variable "allowed_request_types" {
  type        = list(string)
  default     = []
  description = "The allowed request types for the public network. Possible values are ClientConnection, ServerConnection, RESTAPI and Trace"
}

variable "denied_request_types" {
  type        = list(string)
  default     = []
  description = "The denied request types for the public network. Possible values are ClientConnection, ServerConnection, RESTAPI and Trace"
}

variable "private_endpoint" {
  type    = list(map(string))
  default = []
}