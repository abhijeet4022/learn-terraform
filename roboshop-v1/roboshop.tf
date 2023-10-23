provider "aws" {}

resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    name = "frontend"
  }
}
