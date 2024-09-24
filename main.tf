# Get AWS account details
data "aws_caller_identity" "current" {}

# Module: S3 bucket creation
module "s3" {
  source          = "./modules/s3"
  bucket_name     = var.bucket_name
  index_document  = var.index_document
  error_document  = var.error_document
  tags            = var.tags
}

# Module: CloudFront distribution with OAC
module "cloudfront" {
  source                 = "./modules/cloudfront"
  s3_bucket_name         = module.s3.bucket_name
  s3_bucket_domain_name  = module.s3.bucket_regional_domain_name
}

# Module: S3 Bucket policy to allow CloudFront access
module "bucket_policy" {
  source                    = "./modules/policy"
  bucket_name               = module.s3.bucket_name
  bucket_arn                = module.s3.bucket_arn
  account_id                = data.aws_caller_identity.current.account_id
  cloudfront_distribution_id = module.cloudfront.cloudfront_domain_id
}