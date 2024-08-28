# Define Provider
provider aws {
	region = "ap-southeast-1"
}
# Create web server
module "web_server" {
	source = "./modules/web-server"
	instance_name = "module-demo-instance"
	instance_type = "t2.micro"
	ami = "ami-01811d4912b4ccb26"
}
