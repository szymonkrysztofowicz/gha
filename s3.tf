resource "aws_s3_bucket" "bucket" {
  bucket = "sk-terraform-2022-state-backend-test"
  object_lock_enabled = true
  tags = {
    Name = "S3 Remote Terraform State Store"
  }  
}

resource "aws_s3_bucket_versioning" "versioning" {
 bucket = aws_s3_bucket.bucket.id
 versioning_configuration {
   status = "Enabled"
 }
}
