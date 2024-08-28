provider aws {
	region = "ap-southeast-1"
}

# s3 bucket
resource "aws_s3_bucket" "my_bucket" {
  count  		= var.create_bucket ? 1 : 0
  bucket 		= "assignment-s3-bucket"
  force_destroy = true
}

# EC2 instance
resource "aws_instance" "web_server" {
  ami                    = "ami-01811d4912b4ccb26"
  instance_type 		 = var.environment == "production" ? "t3.large" : "t3.micro"

  tags = {
    Name = "assignment-instance"
  }
}
