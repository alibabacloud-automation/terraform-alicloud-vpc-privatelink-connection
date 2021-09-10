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

variable "vpc_privatelink_endpoint_service_description" {
  description = "The description of the VPC privatelink service."
  type        = string
  default     = "tf-testAccVpcPrivatelinkServiceDescription"
}

variable "vpc_privatelink_endpoint_name" {
  description = "The name of the VPC privatelink."
  type        = string
  default     = "tf-testAccVpcPrivatelinkName"
}

variable "vpc_privatelink_bandwidth" {
  description = "The bandwidth of VPC privatelink."
  type        = string
  default     = "1024"
}

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
