resource "aws_s3_bucket" "hw2-s3" {
  bucket = "kaizen-gulya"
  force_destroy = true
}

resource "aws_s3_bucket" "hw2-s3_1" {
  bucket_prefix = "kaizen-"
  force_destroy = true
}

# importing the S3 buckets created manually in AWS Console to Terraform:
resource "aws_s3_bucket" "hw2-s3_2" {
  bucket_prefix = "kaizen-gulya1"
  force_destroy = true
}

resource "aws_s3_bucket" "hw2-s3_3" {
  bucket_prefix = "kaizen-gulya2"
  force_destroy = true
}

#commands to run in terminal to import S3 buckets created manually:
#  terraform import aws_s3_bucket.hw2-s3_2 kaizen-gulya1
#  terraform import aws_s3_bucket.hw2-s3_3 kaizen-gulya2