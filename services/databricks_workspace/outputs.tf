output "workspace_id" {
  value = module.databricks_workspace.workspace_id
}

output "workspace_url" {
  value = module.databricks_workspace.workspace_url
}

output "peering_id" {
  value = module.databricks_virtual_network_peering.peering_id
}