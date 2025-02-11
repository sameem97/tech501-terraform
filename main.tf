# create an EC2 instance
# where to create it - provide cloud name
provider "aws" {
  region = "eu-west-1"
}
# which region to use (where to create these resources)
# which services/resources we want it to create
resource "aws_instance" "app_instance" {
  ami                         = "ami-0c1c30571d2dae5c9"
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  tags = {
    Name = "tech501-sameem-terraform-app"
  }
}
