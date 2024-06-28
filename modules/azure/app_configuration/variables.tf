variable "name" {
  type        = string
  description = "The name of the app configuration."
}
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

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and free"

  validation {
    condition     = var.sku_name == "free" || var.sku_name == "standard"
    error_message = "The value for sku_name can only be \"free\" or \"standard\"!"
  }
}

variable "local_auth_enabled" {
  type        = bool
  default     = false
  description = "Boolean flag to specify whether local authentication methods is enabled."
}

variable "public_network_access" {
  type        = string
  default     = "Disabled"
  description = "Specifies whether public access is enabled. Possible values are Enabled and Disabled."

  validation {
    condition     = var.public_network_access == "Enabled" || var.public_network_access == "Disabled"
    error_message = "The value for sku_name can only be \"Enabled\" or \"Disabled\"!"
  }
}

variable "purge_protection_enabled" {
  type        = bool
  default     = false
  description = "Is Purge Protection enabled for this app configuration?"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "The number of days that items should be retained for once soft-deleted"
}

variable "key_vault_key_identifier" {
  type        = string
  default     = null
  description = "The URI of the key vault key used to encrypt data"
}

variable "identity_client_id" {
  type        = string
  default     = null
  description = "Specifies the client id of the identity which will be used to access key vault."
}

variable "appc_keys" {
  type        = list(map(any))
  default     = []
  description = <<EOF
* key -->(string)(required) The name of the App Configuration Key to create
* value -->(string)(optional) The value of the App Configuration Key
* label -->(string)(optional) The label of the App Configuration Key
* content_type -->(string)(optional) The content type of the App Configuration Key
* tags -->(map(any))(optional) A mapping of tags to assign to the resource

example:
[
  {
    key          = "AzureAd:Instance$Common"
    value        = "https://login.microsoftonline.com/"
    content_type = "AzureAd"
  }
]
EOF
}

variable "appc_features" {
  type        = list(map(any))
  default     = []
  description = <<EOF
* name -->(string)(required) The name of the App Configuration Feature
* description -->(string)(optional) The description of the App Configuration Feature
* label -->(string)(optional) The label of the App Configuration Feature
* enabled -->(bool)(optional) The status of the App Configuration Feature
* tags -->(map(any))(optional) A mapping of tags to assign to the resource

example:
[
  {
    name        = "ContractBoard"
    description = "Contract board feature"
    label       = "Common"
    enabled     = true
  }
]
EOF
}
