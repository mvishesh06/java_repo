provider "aws" {

region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "javahome-tf-1212"
    profile = "vishesh"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
}
