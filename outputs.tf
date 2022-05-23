output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_alb.application_load_balancer.dns_name
}