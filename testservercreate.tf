terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0c2af51e265bd5e0e"
  instance_type = "t2.medium"
  key_name      = "shiva-mentor"

  tags = {
    Name = "TestServer"
  }
}
