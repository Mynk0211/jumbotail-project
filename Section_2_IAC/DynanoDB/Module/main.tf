
provider "aws" {
  region  = var.region
  profile = "default"
}


terraform {
  required_version = ">=1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.0.0"
    }
  }
}


resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.dynamodb_table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  tags = {
    Name = var.dynamodb_table_name
  }
}
