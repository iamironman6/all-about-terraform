provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "saikrishna" {
  instance_type = "t2.micro"
  ami = "ami-020cba7c55df1f615"
  subnet_id = "subnet-0bb9d730e3123ecc7"
  associate_public_ip_address = true
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "konchada-s3-demo-xyz"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}