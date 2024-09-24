# Create the S3 bucket policy to allow CloudFront access
resource "aws_s3_bucket_policy" "this" {
  bucket = var.bucket_name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "cloudfront.amazonaws.com"
        },
        Action   = "s3:GetObject",
        Resource = "${var.bucket_arn}/*",
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = "arn:aws:cloudfront::${var.account_id}:distribution/${var.cloudfront_distribution_id}"
          }
        }
      }
    ]
  })
}
