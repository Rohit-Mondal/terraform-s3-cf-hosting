variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "index_document" {
  type        = string
  description = "Index document for the S3 website"
  default     = "index.html"
}

variable "error_document" {
  type        = string
  description = "Error document for the S3 website"
  default     = "error.html"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the S3 bucket"
}
