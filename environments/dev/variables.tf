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
# Managed Node Group
#################################################

variable "node_group_name" {
  description = "Managed Node Group Name"
  type        = string
}

variable "instance_types" {
  description = "EC2 Instance Types"
  type        = list(string)
}

variable "capacity_type" {
  description = "Capacity Type"
  type        = string
}

variable "ami_type" {
  description = "AMI type for EKS worker nodes"
  type        = string
  default     = "AL2_x86_64"
}

variable "disk_size" {
  description = "Disk size for EKS worker nodes in GiB"
  type        = number
  default     = 20
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "labels" {
  description = "Kubernetes node labels"
  type        = map(string)
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
} 