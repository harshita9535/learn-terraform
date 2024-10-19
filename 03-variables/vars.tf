#Declare the variable with value

variable "x" {
  default = 100
}

#Declare variable without value
#variable "y" {}

variable "y_list" {
  default = [1,2,3]
}


# Print Variable
output "x" {
  value = var.x
}

output "y" {
  value = var.y_list
}