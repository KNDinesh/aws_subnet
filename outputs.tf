# outputs for the module
output "subnet_ids" {
  description = "List of subnet IDs"
  value       = aws_subnet.subnets[*].id
}
