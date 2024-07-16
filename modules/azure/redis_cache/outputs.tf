output "id" {
  value       = azurerm_redis_cache.redis_cache.id
  description = "The ID of the redis cache."
}

output "hostname" {
  value       = azurerm_redis_cache.redis_cache.hostname
  description = "The Hostname of the Redis Instance"

}