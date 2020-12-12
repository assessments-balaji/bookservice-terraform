terraform {
  backend "s3" {
    key            = "app/terraform.tfstate"
    bucket         = "eks-sample-tfstate-bucket"
    dynamodb_table = "eks-terraform-locks"
    encrypt        = true
    region         = "ap-south-1"
  }
}
