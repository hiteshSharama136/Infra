variable "appconf_id" {
  type        = string
  description = "Provide the app configuration id."
}

variable "key" {
  type        = string
  description = "Provide the app configuration key."
}


variable "label" {
  type        = string
  default     = ""
  description = "Provide the label name of the."
}

variable "type" {
  type        = string
  default     = "kv"
  description = "Provide the app configuration key type kv or vault."
}

variable "value" {
  type        = string
  default     = null
  description = "Provide the app configuration key value."
}

variable "vault_key_reference_id" {
  type        = string
  default     = null
  description = "Provide the vault key reference id."
}