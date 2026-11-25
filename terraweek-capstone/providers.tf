terraform {
  backend "s3" {
    bucket       = "terraweek-capstone-state-252366102382-ap-south-1"
    key          = "terraweek-capstone/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
