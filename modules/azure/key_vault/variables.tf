variable "name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "location" {
  description = "The location/region where the Key Vault is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the Key Vault."
  type        = string
}

variable "sku_name" {
  description = "The SKU name to be used for this Key Vault."
  type        = string
  default     = "standard"
}

variable "soft_delete_enabled" {
  description = "Is Soft Delete enabled for this Key Vault?"
  type        = bool
  default     = true
}

variable "purge_protection_enabled" {
  description = "Is Purge Protection enabled for this Key Vault?"
  type        = bool
  default     = false
}

variable "enabled_for_disk_encryption" {
  description = "Is the Key Vault enabled for disk encryption?"
  type        = bool
  default     = false
}

variable "enabled_for_deployment" {
  description = "Is the Key Vault enabled for deployment?"
  type        = bool
  default     = false
}

variable "enabled_for_template_deployment" {
  description = "Is the Key Vault enabled for template deployment?"
  type        = bool
  default     = false
}

variable "network_acls_bypass" {
  description = "Specifies if traffic is bypassed for specific Azure services."
  type        = string
  default     = "AzureServices"
}

variable "network_acls_default_action" {
  description = "Specifies the default action of allow or deny when no other rules match."
  type        = string
  default     = "Deny"
}

variable "network_acls_ip_rules" {
  description = "A list of public IP or IP ranges in CIDR format."
  type        = list(string)
  default     = []
}

variable "network_acls_virtual_network_subnet_ids" {
  description = "A list of virtual network subnet IDs."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
