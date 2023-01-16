resource "aws_route_table" "route-test" {
  vpc_id = aws_vpc.testvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-IGW.id
  }
  tags = var.tags-test1
}

resource "aws_route_table_association" "pub_sub-a" {
  subnet_id      = aws_subnet.pub_sub-a.id
  route_table_id = aws_route_table.route-test.id
}
resource "aws_route_table_association" "pub_sub-b" {
  subnet_id      = aws_subnet.pub_sub-b.id
  route_table_id = aws_route_table.route-test.id
}
resource "aws_route_table_association" "pub_sub-c" {
  subnet_id      = aws_subnet.pub_sub-c.id
  route_table_id = aws_route_table.route-test.id
}


