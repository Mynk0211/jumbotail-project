# ADd all the variables here

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  default     = "eks-cluster"
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
  default     = ["subnet-0a1b2c3d4e5f6g7h8", "subnet-9i8h7g6f5e4d3c2b1"]
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
    default     = ["sg-0a1b2c3d4e5f6g7h8", "sg-9i8h7g6f5e4d3c2b1"]
}

