# Define Provider
provider aws {
	region = "ap-southeast-1"
}

# s3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.s3_bucket_name}"
  force_destroy = true
}

