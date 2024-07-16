variable "postgresql_server_name" {
  type        = string
  description = "(Required) The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "location" {
  type        = string
  description = "(Required) The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "postgres_version" {
  type        = string
  default = "16"
  description = " (Optional) The version of PostgreSQL Flexible Server to use. Possible values are 11,12, 13, 14, 15 and 16."
}
variable "sku_name" {
  type        = string
  default = "Standard_D2ds_v4"
  description = "(Optional) The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the tier + name pattern (e.g. B_Standard_B1ms, GP_Standard_D2s_v3, MO_Standard_E4s_v3)."
}
variable "storage_mb" {
  type        = number
  default = "131072"
  description = "(Optional) The max storage allowed for the PostgreSQL Flexible Server. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4193280, 4194304, 8388608, 16777216 and 33553408."
}
variable "storage_tier" {
  type        = string
  default = "P10"
  description = "(Optional) The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are P4, P6, P10, P15,P20, P30,P40, P50,P60, P70 or P80. Default value is dependant on the storage_mb value. "
}
variable "delegated_subnet_id" {
  type        = string
  description = "(Optional) The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "private_dns_zone_id" {
  type        = string
  description = "(Optional) The ID of the private DNS zone to create the PostgreSQL Flexible Server."
}
variable "administrator_login" {
  type        = string
  description = "(Optional) The Administrator login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}
variable "administrator_password" {
  type        = string
  description = " (Optional) The Password associated with the administrator_login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}
variable "zone" {
  type        = string
  default = "1"
  description = "(Optional) Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located."
}