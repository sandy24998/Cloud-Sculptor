variable "cluster_name" {
  description = "Amazon EKS Cluster Name"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM Role ARN for the EKS Cluster"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for the EKS Cluster"
  type        = list(string)
}

variable "cluster_security_group_id" {
  description = "Security Group ID for the EKS Cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Amazon EKS Kubernetes Version"
  type        = string
}