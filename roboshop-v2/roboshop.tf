provider "aws" {}

variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t3.small"
}

variable "sg" {
  default = ["sg-01746b650f07ff560"]
}

variable "zone" {
  default = "Z100646411UC397CS7DH3"
}

variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
    mongodb = { name = "mongodb-dev" }
    catalogue = { name = "catalogue-dev" }
    redis = { name = "redis-dev" }
    user = { name = "user-dev" }
    cart = { name = "cart-dev" }
    mysql = { name = "mysql-dev" }
    shipping = { name = "shipping-dev" }
    rabbitmq = { name = "rabbitmq-dev" }
    payment = { name = "payment-dev" }
    dispatch = { name = "dispatch-dev" }
  }
}

# Frontend Configuration
resource "aws_instance" "frontend" {
  for_each = var.components
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = lookup(each.key, name, null )
  }
}
resource "aws_route53_record" "frontend" {
  for_each = var.components
  zone_id = var.zone
  name    = "${lookup(each.key,)}-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

