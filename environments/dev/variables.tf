variable "aws_region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "cluster_role_name" {
  description = "EKS Cluster IAM Role Name"
  type        = string
}

variable "node_role_name" {
  description = "EKS Worker Node IAM Role Name"
  type        = string
}