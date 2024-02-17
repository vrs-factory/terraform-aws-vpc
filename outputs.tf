output "self" {
  value       = aws_vpc.this
  description = "An aws_vpc resource itself."
}

output "subnets" {
  value       = aws_subnet.this
  description = "A list of subnets assigned to VPC."
}

output "ig" {
  value       = aws_internet_gateway.this
  description = "Internet Gateway attached to the VPC."
}

output "rtb" {
  value       = aws_route_table.this
  description = "Main Route Table attached to the VPC."
}
