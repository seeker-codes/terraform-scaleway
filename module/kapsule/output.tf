# ==================================================
# Output: Cluster creation Production
# ==================================================

output "Kapsule_info-Production" {
  value = scaleway_k8s_cluster.staircaze-production.version  
}

output "name-production" {
  value = scaleway_k8s_cluster.staircaze-production.type
}

output "cluster_id-production" {
  description = "The ID of the cluster."
  value = scaleway_k8s_cluster.staircaze-production.name
}

output "status-production" {
  value       = scaleway_k8s_cluster.staircaze-production.status
  description = "The status of the Kubernetes cluster."
}

output "apiserver_url-production" {
  value       = scaleway_k8s_cluster.staircaze-production.apiserver_url
  description = "The URL of the Kubernetes API server."
}

# ==================================================
# Output: Node-Pool creation production
# ==================================================

output "Pool_version-production" {
  value = scaleway_k8s_pool.staircaze-production.version
}

output "Pool_status-production" {
  value = scaleway_k8s_pool.staircaze-production.status  
}

output "wait_for_pool_ready-production" {
  value = scaleway_k8s_pool.staircaze-production.wait_for_pool_ready
}

output "Pool_size-production" {
  value = scaleway_k8s_pool.staircaze-production.size
}

# ==================================================
# Output: Cluster creation Staging
# ==================================================

output "Kapsule_info-Staging" {
  value = scaleway_k8s_cluster.staircaze-staging.version  
}

output "name" {
  value = scaleway_k8s_cluster.staircaze-staging.type
}

output "cluster_id" {
  description = "The ID of the cluster."
  value = scaleway_k8s_cluster.staircaze-staging.name
}

output "status" {
  value       = scaleway_k8s_cluster.staircaze-staging.status
  description = "The status of the Kubernetes cluster."
}

output "apiserver_url" {
  value       = scaleway_k8s_cluster.staircaze-staging.apiserver_url
  description = "The URL of the Kubernetes API server."
}

# ==================================================
# Output: Node-Pool creation Staging
# ==================================================

output "Pool_version" {
  value = scaleway_k8s_pool.staircaze-staging.version
}

output "Pool_status" {
  value = scaleway_k8s_pool.staircaze-staging.status  
}

output "wait_for_pool_ready" {
  value = scaleway_k8s_pool.staircaze-staging.wait_for_pool_ready
}

output "Pool_size" {
  value = scaleway_k8s_pool.staircaze-staging.size
}
