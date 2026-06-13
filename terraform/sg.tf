# Security group allows port 22 to my ip and 8080 to all. 
resource "aws_security_group" "pkdev_sg" {
  name        = "pkdev-sg"
  description = "Security group for pkdev demo"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [local.my_ip]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pkdev-sg"
  }
}


locals {
  my_ip = "${chomp(data.http.my_ip.response_body)}/32"
}