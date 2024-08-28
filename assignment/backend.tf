terraform {
	backend "s3" {
		bucket         = "rion-tf-state-bucket"
		key            = "assignment/backend.tfstate"
		region         = "ap-southeast-1"
	}
}
