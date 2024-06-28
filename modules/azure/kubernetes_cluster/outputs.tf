output "kubernetes_cluster_id" {
  description = "The ID of the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "The Kubernetes configuration."
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}
