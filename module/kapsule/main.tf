# ==================================================
# Resource: Cluster creation Production
# ==================================================

resource "scaleway_k8s_cluster" "staircaze-production" {
  name = "${local.name}-production"
  version = var.cluster_version
  cni = var.cni
  
  autoscaler_config {
    disable_scale_down              = false
    scale_down_delay_after_add      = "5m"
    estimator                       = "binpacking"
    expander                        = "random"
    ignore_daemonsets_utilization   = true
    balance_similar_node_groups     = true
    expendable_pods_priority_cutoff = 5
  }

  auto_upgrade {
    enable                        = false
    maintenance_window_start_hour = 4
    maintenance_window_day        = "sunday"
  }

  private_network_id = scaleway_vpc_private_network.gaston.id
  delete_additional_resources = false
  tags = local.tags
}

# ==================================================
# Resource: Node Pools creation Staging
# ==================================================

resource "scaleway_k8s_pool" "staircaze-production" {
  cluster_id = scaleway_k8s_cluster.staircaze-production.id

  name = "${local.name}-production"
  node_type   = var.pool_node_type
  size        = 4
  autoscaling = true
  autohealing = true
  min_size    = var.pool_min_size
  max_size    = var.pool_max_size

  wait_for_pool_ready = true

  tags = concat(local.tags, ["noprefix=pool-target=main"])
}

resource "scaleway_instance_placement_group" "staircaze-production" {
  name = "${local.name}-k8s"
  policy_mode = "enforced"
  policy_type = "low_latency"

  tags = local.tags  
}

resource "local_file" "kubeconfig-production" {
  content = scaleway_k8s_cluster.staircaze-production.kubeconfig[0].config_file
  filename = "${path.root}/kubeconfig-production"
}


# ==================================================
# Resource: Cluster creation Staging
# ==================================================

resource "scaleway_k8s_cluster" "staircaze-staging" {
  name = "${local.name}-staging"
  version = var.cluster_version
  cni = var.cni
  
  autoscaler_config {
    disable_scale_down              = false
    scale_down_delay_after_add      = "5m"
    estimator                       = "binpacking"
    expander                        = "random"
    ignore_daemonsets_utilization   = true
    balance_similar_node_groups     = true
    expendable_pods_priority_cutoff = 5
  }

  auto_upgrade {
    enable                        = false
    maintenance_window_start_hour = 4
    maintenance_window_day        = "sunday"
  }

  private_network_id = scaleway_vpc_private_network.gaston.id
  delete_additional_resources = false
  tags = local.tags
}

# ==================================================
# Resource: Node Pools creation Staging
# ==================================================

resource "scaleway_k8s_pool" "staircaze-staging" {
  cluster_id = scaleway_k8s_cluster.staircaze-staging.id

  name = "${local.name}-k8s"
  node_type   = var.pool_node_type
  size        = 3
  autoscaling = true
  autohealing = true
  min_size    = var.pool_min_size
  max_size    = var.pool_max_size

  wait_for_pool_ready = true

  tags = concat(local.tags, ["noprefix=pool-target=main"])
}

resource "scaleway_instance_placement_group" "staircaze-staging" {
  name = "${local.name}-staging"
  policy_mode = "enforced"
  policy_type = "low_latency"

  tags = local.tags  
}

resource "local_file" "kubeconfig-staging" {
  content = scaleway_k8s_cluster.staircaze-staging.kubeconfig[0].config_file
  filename = "${path.root}/kubeconfig-staging"
}

