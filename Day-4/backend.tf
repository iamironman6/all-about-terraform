terraform {
  backend "s3" {
    bucket = "saikrishna-konchada-demo-2"
    key = "state_files/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}