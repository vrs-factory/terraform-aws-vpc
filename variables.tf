variable "name" {
  type    = string
}

variable "cidr" {
  type        = string
  default     = "172.10.0.0/16"
  description = "CIDR to use for VPC and its subnets."
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
  default     = {}
  description = "A mapping of resource tags."
}
