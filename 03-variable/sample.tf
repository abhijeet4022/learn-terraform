#Plain Value
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}



#List of item
variable "fruits_name" {
  default = [
  "apple",
  "banana"
  ]
}

// default = ["apple", "banana"]
output "first_fruit_name" {
  value = var.fruits_name[0]
}
output "second_fruit_name" {
  value = var.fruits_name[1]
}




#Map value
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

#Map value
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 30
    }
    banana = {
      stock = 200
      price = 5
    }
  }
}

output "fruit_stock_with_price" {
  value = var.fruit_stock_with_price
}