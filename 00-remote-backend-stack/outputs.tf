output "dynamo_table_arn" {
  value = aws_dynamodb_table.this.arn
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}