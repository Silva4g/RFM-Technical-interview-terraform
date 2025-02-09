variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "cluster_role_arn" {
  description = "ARN of the IAM role to be associated with the EKS cluster."
  type        = string
}

variable "node_role_arn" {
  description = "ARN of the IAM role for the EKS managed node group."
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the EKS cluster and node groups will be provisioned."
  type        = list(string)
}

variable "node_group_desired_size" {
  description = "The desired number of worker nodes."
  type        = number
}

variable "node_group_min_size" {
  description = "The minimum number of worker nodes in the autoscaling group."
  type        = number
}

variable "node_group_max_size" {
  description = "The maximum number of worker nodes in the autoscaling group."
  type        = number
}

variable "instance_types" {
  description = "A list of instance types associated with the EKS node group."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the EKS cluster and node group."
  type        = map(string)
}