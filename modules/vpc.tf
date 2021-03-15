resource "aws_vpc" "terraform_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terrafrom_vpc"
  }
}
output "aws_vpc_id" {
  value = aws_vpc.terraform_vpc.id
  #sensitive = true
}