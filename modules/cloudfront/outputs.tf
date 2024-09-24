output "cloudfront_domain_id" {
  value = aws_cloudfront_distribution.this.id
}

output "cloudfront_domain_url" {
  value = aws_cloudfront_distribution.this.domain_name
}