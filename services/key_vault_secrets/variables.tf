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

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
  default     = "myKeyVault"
}

variable "tenant_id" {
  description = "The tenant ID for the Key Vault"
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the Key Vault"
  type        = string
  default     = "standard"
}

variable "secrets" {
  description = "A map of secrets to be stored in the Key Vault"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to the Key Vault"
  type        = map(string)
  default     = {}
}
