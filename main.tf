variable "server_name" {
  description = "Name of the server"
}

variable "region" {
  description = "AWS region where the server will be deployed"
}

variable "ami" {
  description = "AMI ID for the server"
}

variable "instance_type" {
  description = "Instance type for the server"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.server_name
  }
}
