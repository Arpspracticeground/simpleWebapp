module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"

  name = "eks-vpc"
  cidr = var.vpc_cidr

  azs             = var.azs
  public_subnets  = var.public_sbnt
  private_subnets = var.private_sbnt

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Environment = "production"
    Terraform   = "true"
  }
}
