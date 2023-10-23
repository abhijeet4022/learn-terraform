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
resource "aws_route53_zone" "frontend" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "frontend-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
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
resource "aws_route53_zone" "mongodb" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "mongodb-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
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
resource "aws_route53_zone" "catalogue" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "catalogue-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
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
resource "aws_route53_zone" "redis" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "redis-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
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
resource "aws_route53_zone" "user" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "user-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
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
resource "aws_route53_zone" "cart" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "cart-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
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
resource "aws_route53_zone" "mysql" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "mysql-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
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
resource "aws_route53_zone" "shipping" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "shipping-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
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
resource "aws_route53_zone" "rabbitmq" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "rabbitmq-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
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
resource "aws_route53_zone" "payment" {
  zone_id = "Z100646411UC397CS7DH3"
  name    = "payment-dev.learntechnology.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
