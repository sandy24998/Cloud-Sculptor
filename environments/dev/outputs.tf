#################################################
# VPC Outputs
#################################################

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

#################################################
# IAM Outputs
#################################################

output "cluster_role_arn" {
  description = "EKS Cluster IAM Role ARN"

  value = module.iam.cluster_role_arn
}

output "cluster_role_name" {
  description = "EKS Cluster IAM Role Name"

  value = module.iam.cluster_role_name
}

output "node_role_arn" {
  description = "EKS Worker Node IAM Role ARN"

  value = module.iam.node_role_arn
}

output "node_role_name" {
  description = "EKS Worker Node IAM Role Name"

  value = module.iam.node_role_name
}

#################################################
# Security Group Outputs
#################################################

output "cluster_security_group_id" {
  value = module.security_groups.cluster_security_group_id
}

output "node_security_group_id" {
  value = module.security_groups.node_security_group_id
}

#################################################
# EKS Outputs
#################################################

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_arn" {
  value = module.eks.cluster_arn
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_version" {
  value = module.eks.cluster_version
}

output "eks_cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}

output "oidc_issuer" {
  value = module.eks.oidc_issuer
}