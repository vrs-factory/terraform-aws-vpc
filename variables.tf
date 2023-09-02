variable "name" {
  type    = string
  default = ""
}

variable "env" {
  type = string
}

variable "cidr" {
  default     = "172.10.0.0/16"
  description = "CIDR to use for VPC and its subnets. In /16 mask."
}

variable "subnets" {
  default = ["a", "b", "c"]
}

variable "enable_dns_hostnames" {
  default = true
}
