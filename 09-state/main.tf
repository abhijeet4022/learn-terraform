terraform {
  backend "s3" {
    bucket = "roboshop-statefile"
    key = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hello"
}

output "test" {
  value = "var.test"
}

