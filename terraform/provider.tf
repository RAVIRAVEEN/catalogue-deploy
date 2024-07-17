terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
  
  #  backend "s3" {
  #   bucket = "devops-state-dev"
  #   key    = "catalogue"
  #   region = "us-east-1"
  #   dynamodb_table = "devops-locking-dev"
  #   }
}


provider "aws" {
  region = "us-east-1"
}