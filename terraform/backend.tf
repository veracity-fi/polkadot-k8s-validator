terraform {
  backend "s3" {
    key = "validator.tfstate"
    region = "us-east-1"
    bucket = "terraform-validator-deployment-backend"
  }
}
