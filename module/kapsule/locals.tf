locals {
  name = "Staircaze"

  tags = concat(["terraform=true"], var.tags)
}
