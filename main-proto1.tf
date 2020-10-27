provider "aws" {
  #version = "~> 2.0"
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "ixstorage-proto1-terraform-state"
    key    = "default-infrastructure"
    region = "us-east-2"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "ixstorage-proto1-terraform-state"

  versioning {
    enabled = true
  }
}
