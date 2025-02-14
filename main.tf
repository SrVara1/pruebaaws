provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "mi_bucket"

  tags = {
    Name        = "mi_bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}
