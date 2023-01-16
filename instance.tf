resource "aws_instance" "Stefan1" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub_sub-a.id
  vpc_security_group_ids      = [aws_security_group.test-SG.id]
  key_name                    = "test1key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1

}

resource "aws_instance" "Stefan2" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub_sub-b.id
  vpc_security_group_ids      = [aws_security_group.test-SG.id]
  key_name                    = "test1key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1
}
resource "aws_instance" "Stefan3" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub_sub-c.id
  vpc_security_group_ids      = [aws_security_group.test-SG.id]
  key_name                    = "test1key"
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello Evolve Cyber" > /var/www/html/index.html
    EOF

  tags = var.tags-test1
}