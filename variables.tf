#
# Scaleway
#

variable "scw_access_key" {
  type        = string
  description = "Scaleway access key."
}

variable "scw_secret_key" {
  type        = string
  description = "Scaleway secret key."
}

variable "scw_organization_id" {
  type        = string
  description = "Scaleway organization ID."
}

variable "scw_project_id" {
  type        = string
  description = "Scaleway organization ID."
}


variable "zone" {
  type = string
}

variable "region" {
  type = string
}

variable "env" {
  type = string
}
