

locals {
  cluster_name = ""
}

module "kapsule" {
  source = "./module/kapsule"
  cluster_name = local.cluster_name
}

module "databases" {
  source = "./module/databases"
}

module "redis" {
  source = "./module/redis"
}

#module "VPC" {
#  source = "./module/vpc"
#}