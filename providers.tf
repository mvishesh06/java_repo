provider "aws" {

region = "${var.region}"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.26.0"
    }
  }
  backend "s3" {
    bucket = "javahome-tf-1220"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
  
}
