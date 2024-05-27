output "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  value = {
    for subnet_name, subnet in aws_subnet.Zing_Subnets :
    subnet_name => subnet.cidr_block
  }
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value = [
    for subnet in aws_subnet.Zing_Subnets :
    subnet.id if each.value.public
  ]
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value = [
    for subnet in aws_subnet.Zing_Subnets :
    subnet.id if !each.value.public
  ]
}
