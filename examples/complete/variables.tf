##############################################################
#variables for alicloud_vpc
##############################################################
variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "tf-testAccVpcName"
}

variable "vpc_cidr_block" {
  description = "The secondary CIDR blocks for the VPC."
  type        = string
  default     = "172.16.0.0/12"
}

##############################################################
#variables for alicloud_security_group
##############################################################
variable "vpc_security_group_name" {
  description = "The security group name of the VPC."
  type        = string
  default     = "tf-testAccVpcSecurityGroupName"
}

variable "vpc_security_group_description" {
  description = "The security group description of the VPC."
  type        = string
  default     = "tf-testAccVpcSecurityGroupDescription"
}

##############################################################
#variables for alicloud_privatelink_vpc_endpoint_service
##############################################################
variable "vpc_privatelink_endpoint_service_description" {
  description = "The description of the VPC privatelink service."
  type        = string
  default     = "tf-testAccVpcPrivatelinkServiceDescription"
}

variable "connect_bandwidth" {
  description = " The connection bandwidth."
  type        = number
  default     = 0
}

variable "auto_accept_connection" {
  description = "Whether to automatically accept terminal node connections."
  type        = bool
  default     = false
}

##############################################################
#variables for alicloud_privatelink_vpc_endpoint
##############################################################
variable "vpc_privatelink_endpoint_name" {
  description = "The name of the VPC privatelink."
  type        = string
  default     = "tf-testAccVpcPrivatelinkName"
}

##############################################################
#variables for alicloud_privatelink_vpc_endpoint_connection
##############################################################
variable "vpc_privatelink_bandwidth" {
  description = "The bandwidth of VPC privatelink."
  type        = string
  default     = "0"
}