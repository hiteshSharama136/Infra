output "id" {
  value       = azurerm_application_insights.current.id
  description = "The ID of the Application Insights component."
}


output "app_id" {
  value       = azurerm_application_insights.current.app_id
  description = "The App ID associated with this Application Insights component."
}

output "instrumentation_key" {
  value       = azurerm_application_insights.current.instrumentation_key
  description = "The Instrumentation Key for this Application Insights component. (Sensitive)"
}