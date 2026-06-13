# Setup ssh key for ec2 instance
resource "aws_key_pair" "pkdev_key" {
  key_name   = "pkdev-key"
  public_key = file("~/.ssh/pkdev-tata-key.pub")
}
