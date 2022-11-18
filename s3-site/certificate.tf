# # Create Certificate
# resource "aws_acm_certificate" "ssl_certificate" {
#   provider                  = aws.acm_provider
#   domain_name               = "*.${var.s3_app_site}.${var.hosted_zone}"
#   subject_alternative_names = ["${var.s3_app_site}.${var.hosted_zone}"]
#   validation_method = "DNS"

#   lifecycle {
#     create_before_destroy = true
#   }

#   tags = {
#     Name        = "umf-prod-s3-cert"
#   }
# }

# # Create Certificate Validation
# resource "aws_acm_certificate_validation" "prod_cert_validation" {
#   provider                = aws.acm_provider
#   certificate_arn         = aws_acm_certificate.ssl_certificate.arn
#   validation_record_fqdns = [aws_route53_record.s3_prod_record.fqdn]
# }
