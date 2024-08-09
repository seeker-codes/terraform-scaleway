#
# Control plane
#

variable cluster_name {
  type        = string
  description = "Kapsule Cluster given name."
}

variable "pool_node_type" {
  type        = string
  description = "Kapsule Cluster version to use."
  default     = "DEV1-M" 
}
  
variable cluster_version {
  type        = string
  description = "Kapsule Cluster version to use."
  default     = "1.29.1"
}

variable cni {
  type        = string
  default     = "calico"
  description = "The Container Network Interface (CNI) for the Kubernetes cluster (either `cilium`, `calico`, `weave` or `flannel`)."
}


variable "pool_size" {
  type = number
  description = "Pool default number"
  default = 4
}

variable "tags" {
    type = list(string)
    description = "Global tags to apply on ressources"
    default = []
}
variable "pool_min_size" {
   type = number
   description = "Minimun number pool"
   default = 3  
}

variable "pool_max_size" {
  type = number
  description = "Maximum number pool"
  default = 100
  
}

variable "zone" {
  type = string
  default = "fr-par-1"
}

variable "region" {
  type = string
  default = "fr-par"
}
                  
variable "env" {
  type = string
  default = "dev"
}