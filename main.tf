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
  source = "./nsg-module"
}

module "ec2" {
  source            = "./ec2-module"
  security_group_id = module.nsg.security_group_id
}
