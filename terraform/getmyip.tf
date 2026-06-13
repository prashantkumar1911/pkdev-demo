# Get my ip using https://ifconfig.me/ip
data "http" "my_ip" {
  url = "https://ifconfig.me/ip"
}