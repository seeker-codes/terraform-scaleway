# ==================================================
# Output : Cluster creation
# ==================================================
output "Kapsule_info" {
  value = module.kapsule
}

# ==================================================
# Output: Redis creation
# ==================================================
output "redis_info" {
  value = module.redis.entry
}

# ==================================================
# Output: Postgresql creation
# ==================================================
output "endpoint-port" {
  value = module.databases.endpoint-port
}

output "endpoint-ip" {
  value = module.databases.endpoint-ip
}

