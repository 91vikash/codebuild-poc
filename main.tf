terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"  # Specify a minimum version for the AWS provider
    }
  }

  required_version = ">= 1.0.0"  # Specify the minimum Terraform version required
}

provider "aws" {
  region = "us-west-2"  # Specify your preferred AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "com_vikash_codebuildpoc"  # Change this to a unique bucket name
  acl    = "private"
}
