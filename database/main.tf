# Define provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create DB
resource "aws_db_instance" "demo_db" {
  engine              = "${var.db_engine}"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"
  db_name             = "${var.db_name}"
  username            = "admin"
  password            = "${var.db_password}"
  skip_final_snapshot  = true
}
