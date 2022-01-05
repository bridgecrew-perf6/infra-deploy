module "aws_s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "landing"
  env         = "${terraform.workspace}"
  versioning  = true
  tags        = {
    environment = "${terraform.workspace}"
    project     = "data"
  }
}