locals {
  subnet_nums  = var.subnets
  subnet_cidrs = { for k, v in range(length(local.subnet_nums)) : local.subnet_nums[k] => cidrsubnet(var.cidr, 4, k) }

  vpc_name = var.name == "" ? "${var.vpc}-${var.env}" : var.name
}
