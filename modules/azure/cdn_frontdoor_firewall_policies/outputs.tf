output "firewall_policy_ids" {
  value       = {
    for k, firewall in azurerm_cdn_frontdoor_firewall_policy.firewall_policies : k => firewall.id
  }
  description = "The IDs of the Front Door Firewall Policy"
}
