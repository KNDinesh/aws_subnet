# outputs for the module
output "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  value = {
    for subnet_name, subnet in aws_subnet.subnets :
    subnet_name => subnet.cidr_block
  }
}
