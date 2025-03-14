terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"

    }
  }
   required_version = ">= 1.2.0"
}


provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-003d574bab317de3c"
  instance_type = "t2.micro"

  tags = {
    Name = "bobby-rhel"
  }
}
