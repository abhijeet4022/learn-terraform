variable "fruits_name" {
  default = ["apple", "banana"]
}

output "fruits_name" {
  value = var.fruits_name[2]
}
