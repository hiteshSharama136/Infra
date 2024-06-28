variable "resource_group_name" {
  type        = string
  description = "(Required) Resource group name for the aks cluster"
}

variable "location" {
  type        = string
  description = "(Optional) Location to deploy the resources"
  default     = "Canada Central"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Tags to identify the resources"
}


variable "waf_name" {
  type        = string
  description = "(Required) Name for the application gateway to be deployed"
}

variable "waf_setting_mode" {
  type        = string
  default     = "Detection"
}

variable "waf_setting_enabled" {
  type        = bool
  default     = true
}

variable "file_upload_limit_in_mb" {
  type        = number
  default     = 750
}

variable "max_request_body_size_in_kb" {
  type        = number
  default     = 128
}

variable "request_body_check" {
  type        = bool
  default     = true
}

variable "waf_rule_set_type" {
  type        = string
  default     = "OWASP"
}

variable "waf_rule_set_version" {
  type    =  string
  default  = "3.2"
}