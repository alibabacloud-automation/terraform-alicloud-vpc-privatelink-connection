module "example" {
  source                                       = "../.."
  vpc_name                                     = var.vpc_name
  vpc_cidr_block                               = var.vpc_cidr_block
  vpc_security_group_name                      = var.vpc_security_group_name
  vpc_security_group_description               = var.vpc_security_group_description
  vpc_privatelink_endpoint_service_description = var.vpc_privatelink_endpoint_service_description
  connect_bandwidth                            = var.connect_bandwidth
  auto_accept_connection                       = var.auto_accept_connection
  vpc_privatelink_endpoint_name                = var.vpc_privatelink_endpoint_name
  vpc_privatelink_bandwidth                    = var.vpc_privatelink_bandwidth
}
