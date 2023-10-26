variable "sg" {
  default = ["sg-01746b650f07ff560"]
}

variable "zone_id" {
  default = "Z100646411UC397CS7DH3"
}

#variable "name" {}
#variable "instance_type" {}

variable "component" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb"
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue"
      instance_type = "t3.small"
    }
    redis = {
      name = "redis"
      instance_type = "t2.micro"
    }
    user = {
      name = "user"
      instance_type = "t3.small"
    }
    cart = {
      name = "cart"
      instance_type = "t3.small"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.small"
    }
    shipping = {
      name = "shipping"
      instance_type = "t3.small"
    }
    rabbitmq = {
      name = "rabbitmq"
      instance_type = "t2.micro"
    }
    payment = {
      name = "payment"
      instance_type = "t2.micro"
    }
    dispatch = {
      name = "dispatch"
      instance_type = "t2.micro"
    }
  }
}