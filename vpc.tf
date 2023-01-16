resource "aws_vpc" "testvpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = var.tags-test1
}
resource "aws_subnet" "pub_sub-a" {
  vpc_id            = aws_vpc.testvpc.id
  cidr_block        = "10.0.101.0/24"
  availability_zone = "us-east-1a"
  tags              = var.tags-test1

}
resource "aws_subnet" "pub_sub-b" {
  vpc_id            = aws_vpc.testvpc.id
  cidr_block        = "10.0.102.0/24"
  availability_zone = "us-east-1b"
  tags              = var.tags-test1

}
resource "aws_subnet" "pub_sub-c" {
  vpc_id            = aws_vpc.testvpc.id
  cidr_block        = "10.0.103.0/24"
  availability_zone = "us-east-1c"
  tags              = var.tags-test1
}