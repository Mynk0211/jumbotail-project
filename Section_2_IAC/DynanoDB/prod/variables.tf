variable "region" {
  description = "The region in which the resources will be created"
  default     = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  default     = "dynamodb-table-prod"
}

variable "billing_mode" {
  description = "The billing mode of the DynamoDB table"
  default     = "PROVISIONED"
}

variable "hash_key" {
  description = "The hash key of the DynamoDB table"
  default     = "id"
}

variable "hash_key_type" {
  description = "The hash key type of the DynamoDB table"
  default     = "S"
}

variable "read_capacity" {
  description = "The read capacity of the DynamoDB table"
  default     = 5
}

variable "write_capacity" {
  description = "The write capacity of the DynamoDB table"
  default     = 5
}

