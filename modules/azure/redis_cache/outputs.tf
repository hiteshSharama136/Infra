output "id" {
  value       = azurerm_redis_cache.current.id
  description = "The ID of the redis cache."
}

output "hostname" {
  value       = azurerm_redis_cache.current.hostname
  description = "The Hostname of the Redis Instance"

}