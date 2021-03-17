resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.terraform_vpc.id
  
route {
    cidr_block = "0.0.0.0/0"
    gateway_id     = aws_internet_gateway.internet_gw.id
  }

  tags = {
  Name = "public_rt"
  }
}
resource "aws_route_table_association" "pub_sub_a" {
  subnet_id      = aws_subnet.pub_sub_a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "pub_sub_b" {
  subnet_id      = aws_subnet.pub_sub_b.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "pub_sub_c" {
  subnet_id      = aws_subnet.pub_sub_c.id
  route_table_id = aws_route_table.public_rt.id
}
