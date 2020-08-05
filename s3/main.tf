provider "aws" {
  region = "us-west-2"
}
resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-2020-zapr-test-terraform"
  acl = "private"

  lifecycle_rule {
    enabled = true

    transition {
      days = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 60
      storage_class = "GLACIER"
    }
  }
}
resource "aws_s3_bucket_object" "testing1" {
    bucket = "aws_s3_bucket"
    acl    = "private"
    key    = "testing1/"
    source = "/dev/null"
}