output "id" {
  value       = azurerm_cdn_frontdoor_endpoint.endpoint.id
  description = "The ID of this Front Door Endpoint"
}

output "host_name" {
  value       = azurerm_cdn_frontdoor_endpoint.endpoint.host_name
  description = "The host name of the Front Door Endpoint, in the format {endpointName}.{dnsZone} (for example, contoso.azureedge.net)"
}