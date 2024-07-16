output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the virtual machine."
  value       = azurerm_virtual_machine.vm.name
}

output "vm_public_ip" {
  description = "The public IP address associated with the virtual machine (if applicable)."
  value       = azurerm_virtual_machine.vm.public_ip_address
}
