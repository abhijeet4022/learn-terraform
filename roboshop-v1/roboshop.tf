provider "aws" {}

# Frontend Configuration
resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "frontend"
  }
}


# MongoDB Configuration
resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "mongodb"
  }
}


# Catalogue Configuration
resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "catalogue"
  }
}


# Redis Configuration
resource "aws_instance" "redis" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "redis"
  }
}


# User Configuration
resource "aws_instance" "user" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "user"
  }
}



# Cart Configuration
resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "cart"
  }
}


# MySql Configuration
resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "mysql"
  }
}


# Shipping Configuration
resource "aws_instance" "shipping" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "shipping"
  }
}


# RabbitMQ Configuration
resource "aws_instance" "rabbitmq" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "rabbitmq"
  }
}



# Payment Configuration
resource "aws_instance" "payment" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]

  tags = {
    Name = "payment"
  }
}
