terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0"
    }
  }

  required_version = "~> 1.4.6" # actual version used comes from the GitHub Action

  backend "s3" {
    # don't set "key" in this file; it gets set somewhere else
    bucket = "demo-terraform-state-${data.aws_caller_identity.current}" 
                                    # pick a bucket name that won't collide
                                    # (bucket names in S3 are global)
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}