#Declare the variable with value

variable "x" {
  default = 100
}

#Declare variable without value
#variable "y" {}

# Print Variable
output "x" {
  value = var.x
}