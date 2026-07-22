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

variable "cluster_name" {
  description = "Amazon EKS Cluster Name"

  type = string
}

#################################################
# EKS
#################################################

variable "kubernetes_version" {
  description = "Amazon EKS Kubernetes Version"
  type        = string
}

#################################################
# Endpoint Access
#################################################

variable "endpoint_private_access" {
  type = bool
}

variable "endpoint_public_access" {
  type = bool
}

variable "public_access_cidrs" {
  type = list(string)
}

#################################################
# Logging
#################################################

variable "enabled_cluster_log_types" {
  type = list(string)
}

#################################################
# Common Tags
#################################################

variable "tags" {
  type = map(string)
}