variable "fruits_name" {
  default = ["apple", "banana"]
}

output "fruit_name" {
  //value = var.fruits_name[2]
  value = element(var.fruits_name, 2)
}




variable "fruit_stock" {
  default = {
    apple = 100
  }
}

output "fruit_stock" {
  value = try(var.fruit_stock["banana"], 0)
}






