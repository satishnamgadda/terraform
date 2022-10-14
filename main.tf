resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-oct15"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc111"
  }
}
