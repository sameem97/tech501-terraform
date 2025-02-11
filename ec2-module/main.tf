variable "security_group_id" {
  description = "The ID of the security group to associate with the instance"
  type        = string
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_instance" {
  ami                         = "ami-0c1c30571d2dae5c9"
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  key_name                    = "tech501-sameem-aws-key"
  vpc_security_group_ids      = [var.security_group_id]
  tags = {
    Name = "tech501-sameem-terraform-app"
  }
}
