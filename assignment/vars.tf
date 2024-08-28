variable "create_bucket" {
  description = "Should the S3 bucket be created?"
  type        = bool
  # default     = true
}

variable "environment" {
  description = "The environment to deploy into."
  type        = string
  # default     = "dev"
}
