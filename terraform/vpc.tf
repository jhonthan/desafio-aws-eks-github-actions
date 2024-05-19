module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = var.aws_vpc_name
  cidr = var.aws_vpc_cidr

  azs             = var.aws_vpc_azs
  private_subnets = var.aws_vpc_private_subnets
  public_subnets  = var.aws_vpc_public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = merge(var.aws_project_tags, { "kuberntes.io/cluster/${var.aws_eks_name}" = "shared" })

  public_subnet_tags = {
    "kuberntes.io/cluster/${var.aws_eks_name}" = "shared"
    "kuberntes.io/role/elb"                    = 1
  }

  private_subnet_tags = {
    "kuberntes.io/cluster/${var.aws_eks_name}" = "shared"
    "kuberntes.io/role/internal-elb"           = 1
  }
}