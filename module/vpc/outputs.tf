output "gw_flexible_ip_address" {
  description = "Address of gateway flexible IP."
  value       = try(scaleway_vpc_public_gateway_ip.test[0].address, null)
}

output "gw_flexible_ip_id" {
  description = "ID of gateway flexible IP."
  value       = try(scaleway_vpc_public_gateway_ip.test[0].id, null)
}

output "gw_id" {
  description = "ID of public gateways."
  value       = try(scaleway_vpc_public_gateway.test[0].id, null)
}

output "vpc_id" {
  description = "ID of private networks."
  value       = scaleway_vpc_private_network.test.id
}
