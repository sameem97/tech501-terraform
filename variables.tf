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

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "ingress_ssh" {
  description = "The IP address to allow SSH access from"
  type        = list(string)
}

variable "ingress_nodejs" {
  description = "The IP address to allow NodeJS access from"
  type        = list(string)
}

variable "ingress_http" {
  description = "The IP address to allow HTTP access from"
  type        = list(string)
}

variable "egress_all" {
  description = "The IP address to allow all egress traffic to"
  type        = list(string)
}