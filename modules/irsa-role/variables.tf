#################################################
# IAM Role
#################################################

variable "role_name" {
  description = "IAM role name for the Kubernetes service account"
  type        = string
}

#################################################
# OIDC
#################################################

variable "oidc_provider_arn" {
  description = "ARN of the EKS IAM OIDC provider"
  type        = string
}

variable "oidc_issuer" {
  description = "OIDC issuer URL of the EKS cluster"
  type        = string
}

#################################################
# Kubernetes Identity
#################################################

variable "namespace" {
  description = "Kubernetes namespace containing the service account"
  type        = string
}

variable "service_account_name" {
  description = "Kubernetes service account name"
  type        = string
}

#################################################
# IAM Policy
#################################################

variable "policy_arns" {
  description = "IAM policies to attach to the IRSA role"
  type        = list(string)
  default     = []
}

#################################################
# Tags
#################################################

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
  default     = {}
}