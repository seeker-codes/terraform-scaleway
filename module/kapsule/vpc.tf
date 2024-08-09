resource "scaleway_vpc_private_network" "gaston" {
    name = "${local.name}-pn"
    tags = var.tags

    ipv4_subnet {
    subnet = "10.100.0.0/22"
    }  
}