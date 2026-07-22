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

#################################################
# Endpoint Configuration
#################################################

variable "endpoint_private_access" {
  description = "Enable private access to EKS API"

  type    = bool
  default = true
}

variable "endpoint_public_access" {
  description = "Enable public access to EKS API"

  type    = bool
  default = true
}

variable "public_access_cidrs" {
  description = "CIDR blocks allowed to access EKS API"

  type = list(string)

  default = [
    "0.0.0.0/0"
  ]
}

variable "enabled_cluster_log_types" {
  description = "Control Plane Logs"

  type = list(string)

  default = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]
}


variable "tags" {
  description = "Common Tags"

  type = map(string)

  default = {}
}