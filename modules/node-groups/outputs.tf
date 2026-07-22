#################################################
# Node Group Outputs
#################################################

output "node_group_arn" {
  description = "Managed Node Group ARN"
  value       = aws_eks_node_group.this.arn
}

output "node_group_id" {
  description = "Managed Node Group ID"
  value       = aws_eks_node_group.this.id
}

output "node_group_status" {
  description = "Managed Node Group Status"
  value       = aws_eks_node_group.this.status
}

output "node_group_name" {
  description = "Managed Node Group Name"
  value       = aws_eks_node_group.this.node_group_name
}