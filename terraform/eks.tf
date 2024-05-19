module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.11.0"

  cluster_name    = var.aws_eks_name
  cluster_version = var.aws_eks_version

  enable_cluster_creator_admin_permissions = true

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  cluster_endpoint_public_access = true

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    default = {
      min_size       = 2
      max_size       = 2
      desired_size   = 2
      instance_types = var.aws_eks_managed_node_group_instance_types
      tags           = var.aws_project_tags
    }
  }
}