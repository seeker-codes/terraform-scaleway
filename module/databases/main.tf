resource "scaleway_rdb_instance" "scaleway-rdb" {
  name              = "postgresql-blog-${var.env}"
  node_type         = var.rdb_instance_node_type
  volume_type       = var.rdb_instance_volume_type
  engine            = var.rdb_instance_engine
  is_ha_cluster     = var.rdb_is_ha_cluster
  disable_backup    = var.rdb_disable_backup
  volume_size_in_gb = var.rdb_instance_volume_size_in_gb
  user_name         = var.rdb_user_name
  password          = var.rdb_user_root_password
}
