# variable "aws_account_id" {
#   description = "Define the Account ID of AWS"
#   type        = string
#   nullable    = false
# }


variable "aws_region" {
  description = "Region of the resources in AWS"
  type        = string
  default     = "us-east-1"
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Define the name of the VPC"
  type        = string
  default     = "vpc-desafio-aws"
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "Define the ranage of network"
  type        = string
  default     = "10.0.0.0/16"
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Define the subregion use to high-available"
  type        = set(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "Define the subnets private"
  type        = set(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "Define the subnets public"
  type        = set(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  nullable    = false
}

variable "aws_eks_name" {
  description = "Define the name of EKS"
  type        = string
  default     = "eks"
  nullable    = false
}

variable "aws_eks_version" {
  description = "Define the version of EKS"
  type        = string
  default     = "1.29"
  nullable    = false
}

variable "aws_eks_managed_node_group_instance_types" {
  description = "Define the type of instances used on EKS"
  type        = set(string)
  default     = ["t3.small"]
  nullable    = false
}

variable "aws_project_tags" {
  description = "Define the tags of project"
  type        = map(any)
  default = {
    Terraform   = "true"
    Environment = "production"
    Project     = "live"
  }
  nullable = false
}