# Define Provider
provider aws {
	region = "ap-southeast-1"
}

# Create a security group for the EC2 instance
resource "aws_security_group" "web_server_sg" {
  name        = "web-server-sg"
  description = "Security group for the web server"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an AWS EC2 instance
resource "aws_instance" "web_server" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.web_server_sg.id}"]

  tags = {
    Name = "${var.instance_name}"
  }

  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    echo "Hello, World!" > /var/www/html/index.html
    systemctl start nginx
    systemctl enable nginx
    EOF
}
