resource "aws_s3_bucket" "this" {
  bucket = join("-", ["shanu", var.env, var.bucket_name])
  acl    = var.acl
  versioning {
    enabled = var.versioning
  }
  
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
  
  tags = var.tags
}