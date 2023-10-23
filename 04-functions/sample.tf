variable "fruits_name" {
  default = ["apple", "banana"]
}

output "fruit_name" {
  //value = var.fruits_name[2]
  value = element(var.fruits_name, 2)
}
