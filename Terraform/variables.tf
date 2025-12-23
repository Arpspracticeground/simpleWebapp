variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "webapp-eks-cluster"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}
variable "azs"{
  type =list(string)
  default = ["ap-south-1a","ap-south-1b"]
}

variable "private_sbnt"{
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "public_sbnt"{
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}