terraform {
	backend "s3" {
		bucket         = "rion-tf-state-bucket"
		key            = "web-server/backend.tfstate"
		region         = "ap-southeast-1"
	}
}
