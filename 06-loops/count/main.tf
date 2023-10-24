// If we want to iterate the same resources multiple time then we will use loops.

variable "components" {
  default = ["frontend", "mongodb"]
}

resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-01746b650f07ff560"]
  tags = {
    Name = element(var.components, count.index)
    // Name = var.components[count.index]
  }
}

// This count.index will work only when count argument is declare ans under resources.



#count = length(var.components) is set in the aws_instance resource block. This tells Terraform to create instances based on the number of elements in the var.components list. In your case, var.components contains two elements, so Terraform will create two instances.
#count.index is a special variable that is automatically set by Terraform during the resource creation process. It represents the current index (position) of the instance being created within the count loop.
#Here's how the process works:
#For the first instance, count.index is set to 0 because it's the first instance in the loop.
#For the second instance, count.index is set to 1 because it's the second instance in the loop.
#This means that when Terraform creates the instances, it automatically assigns the "Name" tag for each instance based on the value returned by element(var.components, count.index). This allows you to give each instance a unique name based on its position in the list. The count.index value is automatically determined by Terraform during the resource creation process, and you don't need to specify it explicitly.





