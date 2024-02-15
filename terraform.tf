provider "aws" {
  region = "us-east-1" # Ändern Sie dies entsprechend Ihrer Region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "lukas-static-website-1502" # Ändern Sie dies zu einem eindeutigen Bucket-Namen
  acl    = "private"
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "index.html"
  acl    = "public-read"

  source = "index.html"
}
