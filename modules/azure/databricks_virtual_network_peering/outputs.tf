output "databricks-vnet-peer_id" {
  description = " The ID of the azurerm_databricks_virtual_network_peering Rule."
  value       = azurerm_databricks_virtual_network_peering.databricks-vnet-peer.id
}
