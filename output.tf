output "load_balancer_endpoint" {
  description = "The DNS name of the Load Balancer."
  value       = aws_lb.application_lb.dns_name
}