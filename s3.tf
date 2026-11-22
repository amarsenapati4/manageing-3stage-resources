resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "modammd-${var.my-Environment}-ap-southeast-2"

  tags = {
    Name        = "modammd-${var.my-Environment}-ap-southeast-2"
    Environment = "${var.my-Environment}"
  }
}

resource "aws_s3_bucket" "my_s3_bucket-for-terrastate" {

  }
