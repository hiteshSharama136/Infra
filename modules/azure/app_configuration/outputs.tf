output "id" {
  value       = azurerm_app_configuration.app_configuration.id
  description = "The ID of the App Configuration."
}

output "endpoint" {
  value       = azurerm_app_configuration.app_configuration.endpoint
  description = "The URL of the App Configuration."

}

output "identity_principal_id" {
  value       = azurerm_app_configuration.app_configuration.identity.0.principal_id
  description = "The Principal ID associated with the Managed Service Identity."
}

output "identity_tenant_id" {
  value       = azurerm_app_configuration.app_configuration.identity.0.tenant_id
  description = "The Tenant ID associated with the Managed Service Identity."
}

output "primary_read_key_connection_string" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_read_key.0.connection_string : null
  description = "The Connection String for this Access Key - comprising of the Endpoint, ID and Secret."
}

output "primary_read_key_id" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_read_key.0.id : null
  description = "The ID of the Access Key."
}

output "primary_read_key_secret" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_read_key.0.secret : null
  description = "The Secret of the Access Key."
}

output "primary_write_key_connection_string" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_write_key.0.connection_string : null
  description = "The Connection String for this Access Key - comprising of the Endpoint, ID and Secret."
}

output "primary_write_key_id" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_write_key.0.id : null
  description = "The ID of the Access Key."
}

output "primary_write_key_secret" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.primary_write_key.0.secret : null
  description = "The Secret of the Access Key."
}

output "secondary_read_key_connection_string" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_read_key.0.connection_string : null
  description = "The Connection String for this Access Key - comprising of the Endpoint, ID and Secret."
}

output "secondary_read_key_id" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_read_key.0.id : null
  description = "The ID of the Access Key."
}

output "secondary_read_key_secret" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_read_key.0.secret : null
  description = "The Secret of the Access Key."
}

output "secondary_write_key_connection_string" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_write_key.0.connection_string : null
  description = "The Connection String for this Access Key - comprising of the Endpoint, ID and Secret."
}

output "secondary_write_key_id" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_write_key.0.id : null
  description = "The ID of the Access Key."
}

output "secondary_write_key_secret" {
  value       = var.local_auth_enabled ? azurerm_app_configuration.app_configuration.secondary_write_key.0.secret : null
  description = "The Secret of the Access Key."
}
