provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "saikrishna" {
  instance_type = "t2.micro"
  ami = "ami-0360c520857e3138f"
  subnet_id = "subnet-0a962de0379008d44"
  associate_public_ip_address = true
}

resource "aws_instance" "saikrishna2" {
  instance_type = "t2.micro"
  ami = "ami-0360c520857e3138f"
  subnet_id = "subnet-0a962de0379008d44"
  associate_public_ip_address = true
}