variable "name" {
  type        = string
  description = "Provide the name of the secret."
}

variable "value" {
  type        = string
  sensitive   = true
  description = "Provide the value for the secret."
}

variable "key_vault_id" {
  type        = string
  description = "Key vault id to create secret."
}

variable "content_type" {
  type        = string
  default     = null
  description = "Specifies the content type for the Key Vault Secret"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}