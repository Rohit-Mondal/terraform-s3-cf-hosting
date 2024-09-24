# AWS S3 Static Website Hosting with CloudFront using Terraform

This project provisions an S3 bucket and CloudFront distribution for hosting a static website. The solution includes Origin Access Control (OAC) to secure the S3 bucket, ensuring that it is not publicly accessible. CloudFront will serve the static content, and access to the S3 bucket is restricted via a bucket policy.

## Features

- **Private S3 Bucket**: The S3 bucket is private with public access blocked.
- **CloudFront Distribution**: Uses CloudFront to serve static files from the S3 bucket.
- **Origin Access Control (OAC)**: Ensures only CloudFront can access the bucket.
- **Versioning**: S3 bucket versioning is enabled for file history.
- **TLS Encryption**: CloudFront serves content securely via HTTPS.
- **Modular Terraform**: The code is broken into modules for S3, CloudFront, and policies.

## Architecture

1. **S3 Bucket**: Stores the static website files privately.
2. **CloudFront**: A distribution is set up with an Origin Access Control (OAC) to serve content from the S3 bucket.
3. **S3 Bucket Policy**: Restricts direct access to the bucket, allowing only CloudFront to read objects.
4. **Versioning**: Enabled in the S3 bucket for better content management.

## Requirements

- Terraform (v1.0+)
- AWS CLI (configured with proper credentials)
- An AWS account with necessary permissions to create S3 buckets, CloudFront distributions, and policies.

This README provides a comprehensive guide to setting up and managing the project. Let me know if you need any further adjustments!
