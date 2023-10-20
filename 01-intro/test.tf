output "Public_IP" {
  value = "echo $(curl -s ifconfig.me)"
}