terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    access_key = "AKIASQ4KT7A6KZTJNV6O"
    secret_key = "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"
    region     = "eu-south-1"
}

resource "aws_s3_bucket" "my-bucket4545" {
    bucket = "my-bucket4545" 
}