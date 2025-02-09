variable "sg_name" {
  description = "The name of the security group."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created."
  type        = string
}

variable "ingress_from_port" {
  description = "Start port for the security group ingress rule."
  type        = number
}

variable "ingress_to_port" {
  description = "End port for the security group ingress rule."
  type        = number
}

variable "ingress_protocol" {
  description = "Protocol for the security group ingress rule (e.g., tcp, udp, icmp, -1 for all)."
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks allowed for ingress traffic."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the security group."
  type        = map(string)
}