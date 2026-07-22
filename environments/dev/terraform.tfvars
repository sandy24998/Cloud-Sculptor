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

cluster_name = "cloud-sculptor-dev-eks"

#################################################
# Managed Node Group
#################################################

node_group_name = "cloud-sculptor-dev-ng"

instance_types = [
  "t3.medium"
]

capacity_type = "ON_DEMAND"

desired_size = 2
min_size     = 2
max_size     = 3

labels = {
  Environment = "dev"
  NodeGroup   = "primary"
}

tags = {
  Project     = "Cloud-Sculptor"
  Environment = "dev"
  ManagedBy   = "Terraform"
}