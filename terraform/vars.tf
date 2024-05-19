variable "aws_region" {
  description = "Regiao usada para criar os recursos da AWS"
  type        = string
  default     = "us-east-1"
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Define o nome da VPC"
  type        = string
  default     = "vpc-desafio-aws"
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "Define a range do network"
  type        = string
  default     = "10.0.0.0/16"
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Define as sub-regioes de alta disponibilidade"
  type        = set(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "Define as subnets privadas"
  type        = set(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "Define as subnets publicas"
  type        = set(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  nullable    = false
}

variable "aws_eks_name" {
  description = "Define o nome do EKS"
  type        = string
  default     = "live-eks"
  nullable    = false
}

variable "aws_eks_version" {
  description = "Define a versao do EKS"
  type        = string
  default     = "1.29"
  nullable    = false
}

variable "aws_eks_managed_node_group_instance_types" {
  description = "Define os tipos de instancia EC2 usado no EKS"
  type        = set(string)
  default     = ["t3.small"]
  nullable    = false
}

variable "aws_project_tags" {
  description = "Define as tags do projeto"
  type        = map(any)
  default = {
    Terraform   = "true"
    Environment = "producao"
    Project     = "live"
  }
  nullable = false
}