module "demo-1" {
  source = "./demo"
  Name = "demo-1"
  instance_type = "t2.micro"
}

module "demo-2" {
  source = "./demo"
  Name = "demo-2"
  instance_type = "t2.micro"
}
