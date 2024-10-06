terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-4"
    key            = "terraform/vpc/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-lock"
  }
}