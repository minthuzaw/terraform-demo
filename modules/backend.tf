terraform {
	backend "s3" {
		bucket         = "rion-tf-state-bucket"
		key            = "modules/web-server/backend.tfstate"
		region         = "ap-southeast-1"
	}
}
