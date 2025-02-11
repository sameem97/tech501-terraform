output "security_group_id" {
  description = "value of the security group id"
  value = aws_security_group.app_sg.id
}