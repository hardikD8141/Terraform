module "s3" {
  source = "../s3"  # Adjust the source path to match your directory structure
  bucket_name = var.bucket_name
}

resource "aws_cloudfront_distribution" "example_distribution" {
  origin {
    domain_name = module.s3.bucket_regional_domain_name
    origin_id   = "S3-origin"
  }

  enabled = true
  comment = "Example CDN Distribution"

  default_cache_behavior {
    target_origin_id = "S3-origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods   = ["GET", "HEAD", "OPTIONS"]
    cached_methods    = ["GET", "HEAD"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
    min_ttl = 60
    default_ttl = 3600
    max_ttl = 86400
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}