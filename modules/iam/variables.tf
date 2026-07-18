variable "cluster_role_name" {
  description = "Name of the EKS Cluster IAM Role"
  type        = string
}

variable "node_role_name" {
  description = "Name of the EKS Worker Node IAM Role"
  type        = string
}