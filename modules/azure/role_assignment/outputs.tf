output "id" {
  value       = {for k, v in azurerm_role_assignment.role_assignment: k => v.id}
  description = "The Role Assignment ids"
}

output "principal_type" {
  value       = {for k, v in azurerm_role_assignment.role_assignment: k => v.principal_type}
  description = "The type of the principal_id, e.g. User, Group, Service Principal, Application, etc"
}