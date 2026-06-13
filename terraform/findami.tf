# Find aws ami for ubuntu 22.04 jammy in us-east-1 region with owner id 099720109477 and name filter "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
data "aws_ami" "ubuntu_2204" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}