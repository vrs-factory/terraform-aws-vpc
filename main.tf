resource "aws_vpc" "default" {
  cidr_block = var.cidr

  enable_dns_support   = true
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "aws_route_table" "default" {
  vpc_id = aws_vpc.default.id

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "aws_main_route_table_association" "default" {
  vpc_id         = aws_vpc.default.id
  route_table_id = aws_route_table.default.id
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "aws_route" "default" {
  route_table_id         = aws_route_table.default.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
}

resource "aws_subnet" "default" {
  for_each                = local.subnet_cidrs

  vpc_id                  = aws_vpc.default.id
  cidr_block              = each.value
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_region.current.name}${each.key}"

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
