terraform {
  backend "s3" {
    bucket = "kaizen-bucket-hw6"
    key    = "region/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}