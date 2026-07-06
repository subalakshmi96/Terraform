provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-002b685502867073a"
  instance_type = "t3.micro"
}
