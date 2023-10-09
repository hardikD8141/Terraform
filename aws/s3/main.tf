resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  # Add other S3 configurations here
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]
  bucket     = aws_s3_bucket.example.id
  acl        = "private"
}


output "bucket_regional_domain_name" {
  value = aws_s3_bucket.example.bucket_regional_domain_name
}