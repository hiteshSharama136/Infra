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

variable "name" {
  type        = string
  description = "(Required) Provide resource group name"
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

variable "workspace_name" {
  description = "The name of the Databricks workspace"
  type        = string
  default     = "myDatabricksWorkspace"
}

variable "sku_name" {
  description = "The SKU of the Databricks workspace"
  type        = string
  default     = "standard"
}

variable "peering_name" {
  description = "The name of the virtual network peering"
  type        = string
  default     = "myPeering"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "myVNet"
}

variable "remote_virtual_network_id" {
  description = "The ID of the remote virtual network"
  type        = string
  default     = "remoteVNetID"
}

variable "tags" {
  description = "A map of tags to add to the Databricks workspace"
  type        = map(string)
  default     = {}
}

variable "databricks_name" {
  type        = string
  description = "(Required) The name of the azurerm databricks workspace. This needs to be unique across all databricks workspace in the azurerm databricks workspace. Changing this forces a new resource to be created."
}

variable "azdvnet_name" {
  type        = string
  description = "(Required) Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created."
}