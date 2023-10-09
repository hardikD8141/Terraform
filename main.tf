provider "aws" {
  region = var.aws_region  # Replace with your desired AWS region
}

module "cloudfront" {
  source = "./aws/cloudfront"
  bucket_name = var.bucket_name
}