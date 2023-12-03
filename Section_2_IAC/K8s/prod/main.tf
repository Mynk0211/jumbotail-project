# use module to create a k8s cluster 

provider "aws" {
  region     = var.region

}

terraform {
  required_version = ">=1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0.0"
    }
  }
  backend "s3" {
    bucket         = "eks-state-files"
    key            = "eks/cluster-name/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "devops-terraform-state-locking"
  }

}

module "eks" {
    source = "../Module"
    region = var.region
    eks_cluster_name = var.eks_cluster_name
    subnet_ids = var.subnet_ids
    security_group_ids = var.security_group_ids
  
}


