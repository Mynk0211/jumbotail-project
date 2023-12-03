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
