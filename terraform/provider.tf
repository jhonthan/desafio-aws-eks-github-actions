terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }

  backend "s3" {

  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}