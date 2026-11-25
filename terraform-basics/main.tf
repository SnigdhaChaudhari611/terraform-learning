terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "snigdha-terraform-basics-2026"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "web-01" {
  ami           = "ami-0e683f46a1f00df41"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraWeek-Modified"
  }
}
