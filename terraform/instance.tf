# Create ec2 instance with t3.micro instance type
resource "aws_instance" "pkdev_demo" {
  ami           = data.aws_ami.ubuntu_2204.id
  instance_type = "t3.micro"
  key_name      = aws_key_pair.pkdev_key.key_name
  security_groups = [
    aws_security_group.pkdev_sg.name
  ]
  tags = {
    Name = "pkdev-demo"
  }
}