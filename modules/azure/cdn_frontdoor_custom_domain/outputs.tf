output "custom_domain_id" {
  description = "The ID of the Azure CDN Front Door Custom Domain."
  value       = [for cdn in azurerm_cdn_frontdoor_custom_domain.custom_domain : cdn.id]
}

output "custom_domain_name" {
  description = "The name of the Azure CDN Front Door Custom Domain."
  value       = [for cdn in azurerm_cdn_frontdoor_custom_domain.custom_domain : cdn.custom_domain_name]
}
