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
  description = "The location of the resources"
  type        = string
  default     = "East US"
}

variable "postgresql_server_name" {
  description = "The name of the PostgreSQL server"
  type        = string
  default     = "myPostgreSQLServer"
}

variable "sku_name" {
  description = "The SKU name of the PostgreSQL server"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "sku_capacity" {
  description = "The SKU capacity of the PostgreSQL server"
  type        = number
  default     = 1
}

variable "sku_family" {
  description = "The SKU family of the PostgreSQL server"
  type        = string
  default     = "Gen5"
}

variable "sku_tier" {
  description = "The SKU tier of the PostgreSQL server"
  type        = string
  default     = "GeneralPurpose"
}

variable "storage_mb" {
  description = "The storage capacity of the PostgreSQL server in MB"
  type        = number
  default     = 5120
}

variable "admin_login" {
  description = "The administrator login for the PostgreSQL server"
  type        = string
  default     = "username"
}

variable "admin_password" {
  description = "The administrator password for the PostgreSQL server"
  type        = string
  default     = "P@ssw0rd!"
}

variable "database_name" {
  description = "The name of the PostgreSQL database"
  type        = string
  default     = "myDatabase"
}

variable "charset" {
  description = "The character set of the PostgreSQL database"
  type        = string
  default     = "UTF8"
}

variable "collation" {
  description = "The collation of the PostgreSQL database"
  type        = string
  default     = "English_United States.1252"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "delegated_subnet_id" {
  type        = string
  description = "(Optional) The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "administrator_login" {
  type        = string
  description = "(Optional) The Administrator login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}

variable "administrator_password" {
  type        = string
  description = " (Optional) The Password associated with the administrator_login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}

variable "private_dns_zone_id" {
  type        = string
  description = "(Optional) The ID of the private DNS zone to create the PostgreSQL Flexible Server."
}