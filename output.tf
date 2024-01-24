output "static_website_endpoint" {
  description = "static s3 application bucket endpoint"
  value       = aws_s3_bucket.app_bucket.website_endpoint
}