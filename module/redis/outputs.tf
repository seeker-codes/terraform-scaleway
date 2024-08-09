#output "cluster_certificate" {
#  description = "PEM of the certificate used by redis."
#  value       = scaleway_redis_cluster.staircaze_redis.certificate
#}

output "cluster_id" {
  description = "ID of the Database Instance."
  value       = scaleway_redis_cluster.staircaze_redis.id
}

output "entry" {
  description = "ID of the Database Instance."
  value       = scaleway_redis_cluster.staircaze_redis.public_network
}

output "cluster_size" {
 description = "Culster size redis."
 value       = scaleway_redis_cluster.staircaze_redis.cluster_size
}

output "cluster_version" {
 description = "Culster size redis."
 value       = scaleway_redis_cluster.staircaze_redis.version
}