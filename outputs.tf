output "self" {
  value       = aws_vpc.default
  description = "An aws_vpc resource itself."
}

output "subnets" {
  value       = aws_subnet.default
  description = "A list of subnets assigned to VPC."
}

output "igw" {
  value       = aws_internet_gateway.ig
  description = "Internet Gateway attached to the VPC."
}

output "rtb" {
  value       = aws_route_table.rtb
  description = "Main Route Table attached to the VPC."
}
