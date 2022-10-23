resource "aws_vpc" "wp_vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = true

  tags = {
    Name = "wp_vpc"
  }
}
output "vpc_id" {
  value = aws_vpc.wp_vpc.id
}