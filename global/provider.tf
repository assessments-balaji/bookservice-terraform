provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.0"
}

terraform {
  required_version = ">= 0.12, < 0.13"
}
