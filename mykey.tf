resource "aws_key_pair" "test1key" {
  key_name   = "test1key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags       = var.tags-test1
}