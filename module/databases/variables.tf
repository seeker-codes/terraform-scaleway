variable "rdb_is_ha_cluster" {
  type = bool
  default = true
}

variable "rdb_disable_backup" {
    type = bool
    default = true
}

variable "rdb_instance_node_type" {
  type = string
  default = "DB-DEV-S"
}

variable "rdb_instance_engine" {
  type = string
  description ="Version postgresql to use"
  default = "PostgreSQL-15"
}

variable "env" {
  type = string
  default = "dev"
}
variable "rdb_instance_volume_size_in_gb" {
  type = string
  description = "Size of databases"
  default = "50"
}

variable "rdb_instance_volume_type" {
  type = string
  description = "Volume type chose bssd or"
  default = "bssd"
}

variable "rdb_user_name" {
  type = string
  default = "noc"
}

variable "rdb_user_root_password" {
  type = string
  default = "buuHip1*foifjoirfru"
}
