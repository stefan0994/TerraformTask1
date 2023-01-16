output "instance1_public_ip" {
  value       = aws_instance.Stefan1.public_ip
  description = "Public IP of EC2 Instance"
}
output "instance2_public_ip" {
  value       = aws_instance.Stefan2.public_ip
  description = "Public IP of EC2 Instance"
}
output "instance3_public_ip" {
  value       = aws_instance.Stefan3.public_ip
  description = "Public IP of EC2 Instance"
}
output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.myLB.dns_name
}