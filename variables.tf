variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "index_document" {
  type        = string
  default     = "index.html"
  description = "Index document for the S3 website"
}

variable "error_document" {
  type        = string
  default     = "error.html"
  description = "Error document for the S3 website"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the S3 bucket"
  default = {
    Name        = "StaticWebsite"
    Environment = "Production"
  }
}
