output "Public_IP" {
  value = "echo $(curl ifconfig.me)"
}