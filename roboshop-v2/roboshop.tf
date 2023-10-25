provider "aws" {}

data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

#variable "ami" {
#  default = data.aws_ami.ami
#}

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
resource "aws_instance" "instance" {
  for_each = var.components
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = lookup(each.value, "name", null )
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone
  name    = "${lookup(each.value, "name", null)}.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}

