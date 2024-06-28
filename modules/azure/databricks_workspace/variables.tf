variable "databricks_name" {
  type        = string
  description = "(Required) The name of the azurerm databricks workspace. This needs to be unique across all databricks workspace in the azurerm databricks workspace. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The location specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the azurerm databricks workspace. Changing this forces a new resource to be created."
}

variable "sku_name" {
  type        = string
  description = "(Required) The name of the databricks workspace. This needs to be unique across all SKU in the azurerm databricks workspace. Changing this forces a new resource to be created."
}