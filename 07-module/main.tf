module "test" {
  source = "./local-module"
  instance_type = var.instance_type
}


output "image_id" {
  value = module.test
}

variable "instance_type" {
  default = "t2.micro"
}


