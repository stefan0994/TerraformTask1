
resource "aws_lb" "myLB" {

  name                       = "myLB"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.test-SG.id]
  subnets                    = [aws_subnet.pub_sub-a.id, aws_subnet.pub_sub-b.id, aws_subnet.pub_sub-c.id, ]
  enable_deletion_protection = false
tags = var.tags-test1
}