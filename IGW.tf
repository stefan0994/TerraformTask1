resource "aws_internet_gateway" "my-IGW" {
  vpc_id = aws_vpc.testvpc.id
  tags   = var.tags-test1
}