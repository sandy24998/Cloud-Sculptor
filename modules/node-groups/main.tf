resource "aws_eks_node_group" "this" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name

  node_role_arn = var.node_role_arn
  subnet_ids    = var.private_subnet_ids

  instance_types = var.instance_types
  capacity_type  = var.capacity_type

  ami_type  = var.ami_type
  disk_size = var.disk_size

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  labels = var.labels

  update_config {
    max_unavailable = 1
  }

  tags = merge(
    var.tags,
    {
      Name = var.node_group_name
    }
  )
}