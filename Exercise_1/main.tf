# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  ami                    = var.instance_ami
  instance_type          = "t2.micro"
  count                  = 4
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.public_subnet
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4" {
  ami           = var.instance_ami
  instance_type = "m4.large"
  count         = 2
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.public_subnet
  tags = {
    Name = "Udacity M4"
  }
}