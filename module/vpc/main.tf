resource "scaleway_vpc_private_network" "test" {
  name = format("%s-network", var.name)
  tags = var.tags

}

resource "scaleway_vpc_public_gateway_ip" "test" {
  count = var.gw_enabled && var.gw_reserve_ip ? 1 : 0

  tags = var.tags
}

resource "scaleway_vpc_public_gateway" "test" {
  count = var.gw_enabled ? 1 : 0

  bastion_enabled      = var.bastion_enabled
  bastion_port         = var.bastion_port
  enable_smtp          = var.smtp_enabled
  ip_id                = var.gw_reserve_ip ? scaleway_vpc_public_gateway_ip.test[count.index].id : null
  name                 = format("%s-gateway", var.name)
  tags                 = var.tags
  type                 = var.gw_type
  upstream_dns_servers = var.dns_servers
}

resource "scaleway_vpc_public_gateway_dhcp" "test" {
  count = var.gw_enabled ? 1 : 0

  subnet = var.subnet
}

resource "scaleway_vpc_gateway_network" "test" {
  count = var.gw_enabled ? 1 : 0

  dhcp_id            = scaleway_vpc_public_gateway_dhcp.test[count.index].id
  enable_dhcp        = var.dhcp_enabled
  enable_masquerade  = var.masquerade_enabled
  gateway_id         = scaleway_vpc_public_gateway.test[count.index].id
  private_network_id = scaleway_vpc_private_network.test.id
}
