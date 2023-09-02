# Terraform Module - AWS VPC

Terraform module to provision a simple VPC with Internet Gateway and multiple subnets.

## Usage

```terraform
module "vpc" {
  source = "git::https://github.com/vrs-factory/terraform-aws-vpc?ref=v1.0.0"

  env = "development"
}
```
