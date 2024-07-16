variable "mssql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "location" {
  description = "The location/region where the SQL Server is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "administrator_login" {
  description = "The administrator login for the SQL Server."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the SQL Server."
  type        = string
}

variable "version" {
  description = "The version of the SQL Server."
  type        = string
}

variable "identity_type" {
  description = "The type of identity used for the SQL Server."
  type        = string
  default     = "SystemAssigned"
}

variable "auto_grow_enabled" {
  description = "Is automatic grow enabled for the SQL Server?"
  type        = bool
  default     = true
}

variable "backup_retention_days" {
  description = "The number of days backups are retained for."
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Is geo-redundant backup enabled for the SQL Server?"
  type        = bool
  default     = false
}

variable "minimal_tls_version_enforced" {
  description = "The minimal TLS version enforced for the SQL Server."
  type        = string
  default     = "1.2"
}

variable "public_network_access_enabled" {
  description = "Is public network access enabled for the SQL Server?"
  type        = bool
  default     = false
}

variable "ssl_enforcement_enabled" {
  description = "Is SSL enforcement enabled for the SQL Server?"
  type        = bool
  default     = true
}

variable "ssl_enforcement_resources" {
  description = "Resources to enforce SSL on."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
