terraform {
  required_version = "1.2.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #Not Recommended
  #access_key =
  ##secret_key = 
  profile = "terraform"
}

resource "aws_s3_bucket" "my-first-bucket" {

  bucket = "my-first-bucket-edjonathan-1010"
  acl    = "private"
  tags = {
    name        = "My Bucket"
    environment = "Dev"
    managedBy   = "Terraform"
    owner       = "Edjonathan"
    updatedAt   = "2022-06-10"
  }
}