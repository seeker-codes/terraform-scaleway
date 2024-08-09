# ==================================================
# Output: Postgresql creation
# ==================================================
output "endpoint-port" {
  value       = scaleway_rdb_instance.scaleway-rdb.load_balancer[0].port
}

output "endpoint-ip" {
  value       = scaleway_rdb_instance.scaleway-rdb.load_balancer[0].ip
}