resource "azurerm_log_analytics_solution" "log_analytics" {
  solution_name         = var.solution_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = var.workspace_resource_id
  workspace_name        = var.workspace_name

  plan {
    publisher = var.publisher 
    product   = var.product 
  }

  tags = var.tags
}