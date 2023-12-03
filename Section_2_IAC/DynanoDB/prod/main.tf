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
    bucket         = "state-files"
    key            = "dynamoDb/table-name/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "devops-terraform-state-locking"
  }

}

module "dynamodb" {
  source = "../Module"
  region = var.region
  dynamodb_table_name = var.dynamodb_table_name
  billing_mode = var.billing_mode
  hash_key = var.hash_key
  hash_key_type = var.hash_key_type
  read_capacity = var.read_capacity
  write_capacity = var.write_capacity
}
