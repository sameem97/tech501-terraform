provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "default" {
  default = true

}

resource "aws_security_group" "app_sg" {
  name        = var.sg_name
  description = "Allow inbound traffic on port 22, 3000 and 80"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ingress_ssh
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = var.ingress_nodejs
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.ingress_http
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.egress_all
  }
}
