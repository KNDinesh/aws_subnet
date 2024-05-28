resource "aws_subnet" "subnets" {
  for_each = var.subnets

  vpc_id                                         = var.vpc_id
  assign_ipv6_address_on_creation                = false
  availability_zone                              = each.value.az
  cidr_block                                     = each.value.cidr_block
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = each.value.public
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name        = "${var.project_name}-${each.key}"
  }

  timeouts {}
}
