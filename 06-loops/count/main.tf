// If we want to iterate the same resources multiple time then we will use loops.

variable "components" {
  default = ["frontend", "mongodb"]
}

resource "aws_instance" "instances" {

  count = length(var.components)
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    // Name = var.components[count.index]
    Name = element(var.components, count.index)
  }
}

