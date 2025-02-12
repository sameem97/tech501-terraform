variable "ami" {
    description = "The AMI to use for the instance"
    type        = string
}

variable "instance_type" {
    description = "The type of instance to launch"
    type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the instance"
  type        = string
}

variable key_name {
  description = "The name of the key pair to use for the instance"
  type        = string
}

variable "instance_name" {
    description = "The name of the EC2 instance"
    type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
}

variable "region" {
  description = "The region to launch the instance in"
  type        = string
  default = "eu-west-1"
}