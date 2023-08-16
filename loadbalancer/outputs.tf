output "public_load_balancer_dns" {
  value = aws_lb.loadbalancer[0].dns_name
} 

output "private_load_balancer_dns" {
    value = aws_lb.loadbalancer[1].dns_name
}