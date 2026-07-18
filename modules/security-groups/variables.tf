variable "vpc_id" {
  description = "VPC ID where the security groups will be created"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}