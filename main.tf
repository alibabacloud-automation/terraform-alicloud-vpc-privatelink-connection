resource "alicloud_vpc" "default" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr_block
}
resource "alicloud_security_group" "default" {
  name        = var.vpc_security_group_name
  description = var.vpc_security_group_description
  vpc_id      = alicloud_vpc.default.id
}
resource "alicloud_privatelink_vpc_endpoint_service" "default" {
  service_description    = var.vpc_privatelink_endpoint_service_description
  connect_bandwidth      = 103
  auto_accept_connection = false
}
resource "alicloud_privatelink_vpc_endpoint" "default" {
  service_id         = alicloud_privatelink_vpc_endpoint_service.default.id
  vpc_id             = alicloud_vpc.default.id
  security_group_ids = [alicloud_security_group.default.id]
  vpc_endpoint_name  = var.vpc_privatelink_endpoint_name
  depends_on         = [alicloud_privatelink_vpc_endpoint_service.default]
}
resource "alicloud_privatelink_vpc_endpoint_connection" "default" {
  service_id  = alicloud_privatelink_vpc_endpoint_service.default.id
  endpoint_id = alicloud_privatelink_vpc_endpoint.default.id
  bandwidth   = var.vpc_privatelink_bandwidth
}