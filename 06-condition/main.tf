#Condition in terraform is all about choosing the value
#cond ? true-val : false-val

resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}