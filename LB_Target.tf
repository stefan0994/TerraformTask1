resource "aws_lb_target_group" "myLB" {
  name     = "my_targetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.testvpc.id
  health_check {
    healthy_threshold   = 2
    interval            = 30
    protocol            = "HTTP"
    unhealthy_threshold = 2
  }
  tags = var.tags-test1
}

resource "aws_lb_target_group_attachment" "attach-instance1" {
  target_group_arn = aws_lb_target_group.my_targetgroup.arn
  target_id        = aws_instance.Stefan1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach-instance2" {
  target_group_arn = aws_lb_target_group.mu_targetgroup.arn
  target_id        = aws_instance.Stefan2.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach-instance3" {
  target_group_arn = aws_lb_target_group.my_targetgroup.arn
  target_id        = aws_instance.Stefan3.id
  port             = 80
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.myLB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_targetgroup.arn
  }
}