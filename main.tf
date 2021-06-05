## backend data for terraform
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "cloudzmistatf"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

## random provider
provider "random" {}

## Provider us-east-2
provider "aws" {
  region = "us-east-2"
}

