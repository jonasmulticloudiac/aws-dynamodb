resource "aws_dynamodb_table" "cloudz-dynamodb-table" {
  name           = "KemuelSongs"
  billing_mode   = "PAY_PER_REQUEST"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "Artist"
  range_key      = "Song Title"

  attribute {
    name = "Artist"
    type = "S"
  }

  attribute {
    name = "Song Title"
    type = "S"
  }
  tags = {
    Name        = "dynamodb-table1"
    Environment = "production"
  }

}
