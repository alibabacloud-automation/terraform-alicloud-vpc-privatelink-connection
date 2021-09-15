Terraform module which creating VPC and privatelink connection on Alibaba Cloud

terraform-alicloud-vpc-privatelink-connection
=====================================================================

English | [简体中文](README-CN.md)

This module is used to create VPC and privatelink connection on Alibaba Cloud under Alibaba Cloud.

These types of resources are supported:

* [alicloud_vpc](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc)
* [alicloud_security_group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/security_group)
* [alicloud_privatelink_vpc_endpoint](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/privatelink_vpc_endpoint)
* [alicloud_privatelink_vpc_endpoint_service](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/privatelink_vpc_endpoint_service)
* [alicloud_privatelink_vpc_endpoint_connection](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/privatelink_vpc_endpoint_connection)

## Usage

```hcl
module "example" {
  source                    = "terraform-alicloud-modules/vpc-privatelink-connection/alicloud"
  vpc_name                  = "terraformTestVpcName"
  vpc_cidr_block            = "terraformTestVpcCidrBlock"
  vpc_privatelink_bandwidth = "1024"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.110.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.110.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Will(ppnjy@qq.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
