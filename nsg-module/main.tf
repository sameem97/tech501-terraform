provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "default" {
  default = true

}

resource "aws_security_group" "app_sg" {
  name        = "tech501-sameem-tf-allow-port-22-3000-80"
  description = "Allow inbound traffic on port 22 from localhost, 3000 and 80 from anywhere"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["127.0.0.1/32"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
