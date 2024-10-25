#Declare the variable with value

variable "x" {
  default = 100
}

#Declare variable without value
#variable "y" {}

variable "y_list" {
  default = [1,2,3]
}

variable "z_map" {
  default = {
    x = 10
    y = 20
  }
}

# Print Variable
output "x" {
  value = var.x
}

output "y" {
  value = var.y_list
}

output "z" {
  value = var.z_map
}

output "y_1" {
  value = var.y_list
}

output "z_x" {
  value = var.z_map["x"]
}


# we can declare empty variables, But data can be sent from a file, those files are called as tfvars
variable "env" {}
output "env" {
  value = var.env
}

# *.auto.tfvars are the files which will pick automatically. Along with this if the filename is terraform.auto.tfvars then also terraform picks this vars file automatically, No need to specify exclusively
variable "common" {}
output "common" {
  value = var.common
}


# Data in terraform is three types
#1.String - Need quoting , Only double quotes , TF doesn't support single quote
#2.Number - No quotes
#3.Boolean - No quotes
