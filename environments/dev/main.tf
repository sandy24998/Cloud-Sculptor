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