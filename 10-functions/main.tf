variable "test" {
  default = "abc"
}

output "test" {
  value = upper(var.test)
}