variable "ami" {
	description = "The AMI to use for EC2 instance"
	default     = "ami-01811d4912b4ccb26"
}

variable "instance_type" {
	description = "Type of EC2 instance"
	default     = "t2.micro"
}

variable "instance_name" {
	description = "EC2 instance name"
	default     = "rion-tf-demo-instance"
}
