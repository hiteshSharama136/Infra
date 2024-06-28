output "id" {
  value       = azurerm_key_vault_secret.current.id
  description = "The ID of the Key Vault Secret"
}

output "versionless_id" {
  value       = azurerm_key_vault_secret.current.versionless_id
  description = "The version id of key vault secret."
}