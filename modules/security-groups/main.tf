#################################################
# EKS Cluster Security Group
#################################################

resource "aws_security_group" "eks_cluster" {
  name        = "${var.cluster_name}-cluster-sg"
  description = "Security Group for EKS Control Plane"
  vpc_id      = var.vpc_id

  egress {
    description = "Allow all outbound traffic"

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.cluster_name}-cluster-sg"
  }
}

#################################################
# Worker Node Security Group
#################################################

resource "aws_security_group" "eks_nodes" {
  name        = "${var.cluster_name}-node-sg"
  description = "Security Group for EKS Worker Nodes"
  vpc_id      = var.vpc_id

  egress {
    description = "Allow all outbound traffic"

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.cluster_name}-node-sg"
  }
}