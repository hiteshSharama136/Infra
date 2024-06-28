output "id" {
  value = azurerm_kubernetes_cluster.k8s.id
}

output "resource_group" {
  value = azurerm_kubernetes_cluster.k8s.node_resource_group
}

output "resource_group_id" {
  value = azurerm_kubernetes_cluster.k8s.node_resource_group_id
}

output "identity" {
  value = azurerm_kubernetes_cluster.k8s.identity[0].principal_id
}

output "kubelet_identity" {
  value = azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id
}

output "oms_agent_identity" {
  value = azurerm_kubernetes_cluster.k8s.oms_agent[0].oms_agent_identity[0].object_id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.k8s.name
}

output "client_key" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.client_key
  sensitive = true
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate
  sensitive = true
}

output "cluster_username" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.username
  sensitive = true
}

output "cluster_password" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.password
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}

output "host" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config.0.host
  sensitive = true
}