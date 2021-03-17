resource "aws_vpc" "terraform_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terrafrom_vpc"
  }
}

output "aws_vpc_id" {
  value = aws_vpc.terraform_vpc.id
  sensitive = true
}

resource "aws_main_route_table_association" "rt_vpc" {
  vpc_id         = aws_vpc.terraform_vpc.id
  route_table_id = aws_route_table.public_rt.id
}

