provider "aws" {
  region = var.aws_region
}

module "vpc" {

  source = "../../modules/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  availability_zones = var.availability_zones
}


module "iam" {
  source = "../../modules/iam"

  cluster_role_name = var.cluster_role_name
  node_role_name    = var.node_role_name
}

module "security_groups" {
  source = "../../modules/security-groups"

  vpc_id       = module.vpc.vpc_id
  cluster_name = var.cluster_name
}

#################################################
# Amazon EKS
#################################################

module "eks" {
  source = "../../modules/eks"

  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version

  cluster_role_arn = module.iam.cluster_role_arn

  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_security_group_id = module.security_groups.cluster_security_group_id
}