data "archive_file" "zip_file" {
  type        = "zip"
  source_file = "./lambda/sweeper.py"
  output_path = "/tmp/sweeper_function.zip"
}

resource "aws_s3_bucket_object" "copy_zip" {
  bucket = module.aws_s3_lambda_code_bucket.s3_bucket
  key = "sweeper_function/sweeper_${data.archive_file.zip_file.output_md5}.zip"
  source = data.archive_file.zip_file.output_path
}