output "identity_id" {
  value = azurerm_user_assigned_identity.aks_identity.id
}

output "identity_principal_id" {
  value = azurerm_user_assigned_identity.aks_identity.principal_id
}

output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
