resource "aws_instance" "web" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = var.instance_type
  count=3

  tags = {
    Name = var.countname [count.index]
  }
}

provider "aws" {
  region = "us-east-1"
}

module "module-vpc" {
  source            = "./module-vpc"
  vpc_name          = "my-vpc"
  vpc_cidr          = "10.0.0.0/16"
  vpc_azs           = ["us-east-1a", "us-east-1b"]
  private_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets    = ["10.0.101.0/24", "10.0.102.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
}

module "module-ec2" {
  source = "./module-ec2"
}
