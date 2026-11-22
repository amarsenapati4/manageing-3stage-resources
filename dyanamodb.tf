resource "aws_dynamodb_table" "my_app_table" {
  name="modammd-${var.my-Environment}-${var.region}-dynamodb"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name="id"
    type = "S"
  }
}