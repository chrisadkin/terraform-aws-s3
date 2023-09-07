terraform {
  cloud {
    organization = "SDLC-demo"

    workspaces {
      name = "containerized-app"    
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket_name
}
