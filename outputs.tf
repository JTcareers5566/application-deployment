output "Web-link" {
  value = "http://${aws_instance.Python-Server.public_ip}"
}
