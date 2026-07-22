output "cluster_name" {
  description = "Amazon EKS Cluster Name"

  value = aws_eks_cluster.this.name
}

output "cluster_arn" {
  description = "Amazon EKS Cluster ARN"

  value = aws_eks_cluster.this.arn
}

output "cluster_endpoint" {
  description = "Amazon EKS API Server Endpoint"

  value = aws_eks_cluster.this.endpoint
}

output "cluster_version" {
  description = "Amazon EKS Kubernetes Version"

  value = aws_eks_cluster.this.version
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required for kubectl"

  value = aws_eks_cluster.this.certificate_authority[0].data
}

output "cluster_security_group_id" {
  description = "Cluster Security Group created by Amazon EKS"

  value = aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}

output "oidc_issuer" {
  description = "OIDC issuer URL"

  value = aws_eks_cluster.this.identity[0].oidc[0].issuer
}