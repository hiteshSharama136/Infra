output "redis_cache_private_endpoint_id" {
  value = module.redis_cache_private_endpoint.private_endpoint_id
}

output "redis_cache_dns_zone_name" {
  value = module.redis_cache_private_endpoint.private_dns_zone_name
}
