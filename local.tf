locals {
  ami       = "ami-08dcc81a13875f81c"
  workspace = terraform.workspace
  region    = "eu-west-1"
  environment = {
    dev = {
      instance_type = "t3.micro"
    }
    stag = {
      instance_type = "t3.medium"
    }
  }
