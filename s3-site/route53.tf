resource "aws_route53_record" "www_s3_prod_record" {

  depends_on = [aws_cloudfront_distribution.www_s3_distribution]
  name       = "www.${var.s3_app_site}.${var.hosted_zone}"
  zone_id    = data.aws_route53_zone.hosted_zone.zone_id
  type       = "A"

  alias {
    name                   = aws_cloudfront_distribution.www_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.www_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "s3_prod_record" {

  depends_on = [aws_cloudfront_distribution.root_s3_distribution]
  name       = "${var.s3_app_site}.${var.hosted_zone}"
  zone_id    = data.aws_route53_zone.hosted_zone.zone_id
  type       = "A"

  alias {
    name                   = aws_cloudfront_distribution.root_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.root_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
