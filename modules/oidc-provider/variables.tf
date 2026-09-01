variable "cluster_name" {
  description = "Amazon EKS Cluster Name"
  type        = string
}

variable "oidc_issuer" {
  description = "OIDC Issuer URL"
  type        = string
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
  default     = {}
}