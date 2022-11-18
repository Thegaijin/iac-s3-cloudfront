data "aws_route53_zone" "hosted_zone" {
  name         = "${var.hosted_zone}"
}

data "aws_acm_certificate" "dashboard_cert" {
  domain      = "*.${var.s3_app_site}.${var.hosted_zone}"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
  provider    = aws.acm_provider
}
