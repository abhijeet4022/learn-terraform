data "aws_ami" "instance" {
  most_recent = yes
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

output "image_id" {
  value = data.aws_ami.instance.image_id
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.instance.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "module-test"
  }
}

variable "instance_type" {}