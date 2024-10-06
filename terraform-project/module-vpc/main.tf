
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = var.vpc_azs
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  public_subnet_tags   = { "Type" = "public" }
  private_subnet_tags  = { "Type" = "private" }
}
