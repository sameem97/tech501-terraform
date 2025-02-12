variable "sg_name" {
    description = "The name of the security group"
    type        = string 
}

variable "ingress_ssh" {
    description = "The IP address to allow SSH access from"
    type        = list(string)
}

variable ingress_nodejs {
    description = "The IP address to allow NodeJS access from"
    type        = list(string)
}

variable ingress_http {
    description = "The IP address to allow HTTP access from"
    type        = list(string)
}

variable egress_all {
    description = "The IP address to allow all egress traffic to"
    type        = list(string)
}

variable "description" {
    description = "The description of the security group"
    type        = string
}