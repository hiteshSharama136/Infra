output "security_policy_ids" {
  value       = {
    for k, s in azurerm_cdn_frontdoor_security_policy.security_policies : k => s.id
  }
  description = "The IDs of the Front Door Security Policy"
}