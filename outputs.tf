output "this_vpc_id" {
  value = alicloud_vpc.default.id
}

output "this_vpc_privatelink_service_id" {
  value = alicloud_privatelink_vpc_endpoint_service.default.id
}

output "this_vpc_privatelink_endpoint_connection_id" {
  value = alicloud_privatelink_vpc_endpoint_connection.default.id
}
