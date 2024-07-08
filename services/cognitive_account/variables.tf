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

variable "name" {
  description = "The name of the Cognitive Services account"
  type        = string
  default     = "myCognitiveAccount"
}

variable "kind" {
  description = "The kind of the Cognitive Services account"
  type        = string
  default     = "CognitiveServices"
}

variable "sku_name" {
  description = "The SKU name of the Cognitive Services account"
  type        = string
  default     = "S1"
}

variable "custom_subdomain_name" {
  description = "The custom subdomain name for the Cognitive Services account"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to the Cognitive Services account"
  type        = map(string)
  default     = {}
}

variable "name" {
  type        = string
  description = "(Required) Provide resource group name"
}
