resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.wp_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "private_rt"
  }
}
resource "aws_route_table_association" "priv_sub_a" {
  subnet_id      = aws_subnet.priv_sub_a.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "priv_sub_b" {
  subnet_id      = aws_subnet.priv_sub_b.id
  route_table_id = aws_route_table.private_rt.id
}

