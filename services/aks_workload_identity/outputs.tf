output "identity_id" {
  value = module.aks_workload_identity.identity_id
}

output "identity_principal_id" {
  value = module.aks_workload_identity.identity_principal_id
}

output "aks_id" {
  value = module.aks_workload_identity.aks_id
}

output "aks_name" {
  value = module.aks_workload_identity.aks_name
}
