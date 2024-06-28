resource "azurerm_role_assignment" "role_assignment" {
  for_each             = var.role_assignment_list
  name                 = try(each.value.name, null)
  scope                = each.value.scope
  role_definition_name = try(each.value.role_definition_name, null)
  role_definition_id   = try(each.value.role_definition_id, null)
  principal_id         = each.value.principal_id
}