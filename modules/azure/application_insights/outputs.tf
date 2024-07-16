output "id" {
  value       = azurerm_application_insights.app_insights.id
  description = "The ID of the Application Insights component."
}


output "app_id" {
  value       = azurerm_application_insights.app_insights.app_id
  description = "The App ID associated with this Application Insights component."
}

output "instrumentation_key" {
  value       = azurerm_application_insights.app_insights.instrumentation_key
  description = "The Instrumentation Key for this Application Insights component. (Sensitive)"
}