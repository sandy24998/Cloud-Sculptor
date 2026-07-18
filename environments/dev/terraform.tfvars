aws_region = "ap-south-1"

vpc_name = "cloud-sculptor-dev-vpc"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

cluster_role_name = "cloud-sculptor-dev-eks-cluster-role"
node_role_name    = "cloud-sculptor-dev-eks-node-role"