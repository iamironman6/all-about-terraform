terraform {
  backend "s3" {
    bucket = "konchada-s3-demo-xyz"
    key = "saikrishna/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}