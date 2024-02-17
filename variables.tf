variable "name" {
  type    = string
}

variable "cidr" {
  type        = string
  description = "CIDR to use for VPC and its subnets."
  default     = "172.10.0.0/16"
}

variable "subnets" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of resource tags."
  default     = {}
}
