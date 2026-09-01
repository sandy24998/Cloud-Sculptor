data "tls_certificate" "oidc" {
  url = var.oidc_issuer
}

resource "aws_iam_openid_connect_provider" "this" {
  url = var.oidc_issuer

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    data.tls_certificate.oidc.certificates[0].sha1_fingerprint
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.cluster_name}-oidc-provider"
    }
  )
}