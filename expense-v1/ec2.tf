resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07b4a798fb1782003"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07b4a798fb1782003"]
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "musql" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07b4a798fb1782003"]
  tags = {
    Name = "mysql"
  }
}