terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }

  backend "s3" {
    bucket         = "terraformbucket123k"
    key            = "demo/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "lockedtable"
  }
}
provider "aws" {
  # Configuration options
}