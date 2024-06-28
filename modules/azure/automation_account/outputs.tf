output "automation_account_id" {
  description = "The ID of the Automation Account."
  value       = azurerm_automation_account.automation.id
}

output "automation_account_name" {
  description = "The name of the Automation Account."
  value       = azurerm_automation_account.automation.name
}

output "automation_account_location" {
  description = "The location of the Automation Account."
  value       = azurerm_automation_account.automation.location
}
