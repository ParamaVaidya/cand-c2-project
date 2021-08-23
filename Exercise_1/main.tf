# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "removed for security reasons"
  secret_key = "removed for security reasons"
  region = "us-east-1"
}

variable "vpc" {
  type = string
  default = "vpc-ec592b91"
}

variable "subnet" {
  type = string
  default = "subnet-f0bf9996"
}

variable "ami" {
  type = string
  default = "ami-0c2b8ca1dad447f8a"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  count = "4"
  ami = var.ami
  instance_type = "t2.micro"
  tags = {
    name = "Udacity Terraform"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4" {
  count = "0"
  ami =  var.ami
  instance_type = "m4.large"
  tags = {
    name = "Udacity Terraform"
  }
} 