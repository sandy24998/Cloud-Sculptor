#################################################
# Cluster
#################################################

variable "cluster_name" {
  description = "Amazon EKS Cluster Name"
  type        = string
}

#################################################
# Node Role
#################################################

variable "node_role_arn" {
  description = "IAM Role ARN for Worker Nodes"
  type        = string
}

#################################################
# Networking
#################################################

variable "private_subnet_ids" {
  description = "Private Subnets for Node Group"
  type        = list(string)
}

#################################################
# Node Group
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
  description = "ON_DEMAND or SPOT"
  type        = string
}

#################################################
# Scaling
#################################################

variable "desired_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

#################################################
# Labels
#################################################

variable "labels" {
  type    = map(string)
  default = {}
}

#################################################
# Tags
#################################################

variable "tags" {
  type    = map(string)
  default = {}
}