terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

}

data "aws_security_group" "selected" {
  name = "allow-all"
}

#Decouple provisioner in following scenarios
#1. If provisioner fails then instance we dont want to re-create my instance
#2. Requirements emerge in a way that we need to re-run the provisioner again and again (meaning those provisioning commands we need to run again and again


resource "aws_instance" "test1" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}

resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test1.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
