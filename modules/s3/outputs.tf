output "s3_bucket_id" {
  value = aws_s3_bucket.this.id
}
output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}
output "s3_bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}
output "s3_hosted_zone_id" {
  value = aws_s3_bucket.this.hosted_zone_id
}
output "s3_bucket_region" {
  value = aws_s3_bucket.this.region
}
output "s3_bucket" {
  value = aws_s3_bucket.this.bucket
}