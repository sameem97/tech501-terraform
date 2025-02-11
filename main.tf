terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.56.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"

}

module "nsg" {
  source         = "./nsg-module"
  ingress_http   = var.ingress_http
  egress_all     = var.egress_all
  ingress_nodejs = var.ingress_nodejs
  ingress_ssh    = var.ingress_ssh
  sg_name        = var.sg_name
}

module "ec2" {
  source            = "./ec2-module"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  instance_name     = var.instance_name
  security_group_id = module.nsg.security_group_id
}
