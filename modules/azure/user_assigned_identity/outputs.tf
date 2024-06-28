output "id" {
  value = azurerm_user_assigned_identity.identity.id
  description = "The id of the identity"
}

output "client_id" {
  value = azurerm_user_assigned_identity.identity.client_id
  description = "The client id of the identity"
}

output "principal_id" {
  value = azurerm_user_assigned_identity.identity.principal_id
  description = "The principal id of the identity"
}

output "tenant_id" {
  value = azurerm_user_assigned_identity.identity.tenant_id
  description = "The tenant id of the identity"
}