# Create the S3 bucket
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  force_destroy = true
  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket = aws_s3_bucket.this.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
