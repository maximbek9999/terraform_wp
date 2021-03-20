resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.pub_sub_a.id

  tags = {
    Name = "nat_gw"
  }
}
output "nat_gw_id" {
  value = aws_nat_gateway.nat_gw.id
}