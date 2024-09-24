variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "bucket_arn" {
  type        = string
  description = "The ARN of the S3 bucket"
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
}

variable "cloudfront_distribution_id" {
  type        = string
  description = "The ID of the CloudFront distribution"
}
