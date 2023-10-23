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

output "apple_price" {
  value = var.fruit_stock_with_price["apple"].price
}


# Variable data types

variable "fruit_details" {
  default = {
    apple = {
      stock = 100 # Number
      type = "kashmir" # String
      for_sale = true # Boolean
    }
  }
}

# Variable in a combination of any other string then it need to be with in ${}
output "fruit_details_apple" {
    value = "Apple Stock = ${var.fruit_details["apple"].stock}, Apple Type = ${var.fruit_details["apple"].type}, Apple Sale State = ${var.fruit_details["apple"].for_sale}"
}