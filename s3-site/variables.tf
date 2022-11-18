variable "domain_name" {
  type = string
  description = "The domain name for the website."
}

variable "bucket_name" {
  type = string
  description = "The name of the bucket without the www. prefix. Normally domain_name."
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
}

variable "s3_app_site" {
  description = "Name of the app"
}

variable "env" {
  description = "The application environment"
}

variable "hosted_zone" {
  description = "route53 hosted zone"
}

variable "provider_region" {
  description = "region where the provider is located"
}

# variable "backend_region" {
#   description = "region where the backend is located"
# }

variable "backend_bucket" {
  description = "region where the terraform state file is stored"
}

variable "backend_key" {
  description = "key for the terraform state file in the S3 bucket"
}
