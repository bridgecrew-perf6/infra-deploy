module "aws_s3_landing_bucket" {
  source      = "./modules/s3"
  bucket_name = "landing"
  env         = "${terraform.workspace}"
  versioning  = true
  tags        = {
    environment = "${terraform.workspace}"
    project     = "data"
  }
}

module "aws_s3_lambda_code_bucket" {
  source      = "./modules/s3"
  bucket_name = "lambda-code"
  env         = "${terraform.workspace}"
  versioning  = true
  tags        = {
    environment = "${terraform.workspace}"
    project     = "data"
  }
}
