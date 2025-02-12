provider "aws" {
  region = var.region
}

resource "aws_instance" "app_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.security_group_id]
  tags = {
    Name = var.instance_name
  }
}
