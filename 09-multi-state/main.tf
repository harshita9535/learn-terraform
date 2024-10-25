terraform {
  backend "s3" {
    bucket = "hbh-bucket"
    key    = "test1/${var.env}/state"
    region = "us-east-1"
  }
}

output "env" {
  value = var.env
}

variable "env" {}

