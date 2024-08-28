terraform {
  backend "s3" {
    bucket         = "rion-tf-state-bucket"
	key            = "database/backend.tfstate"
	region         = "ap-southeast-1"
  }
}
