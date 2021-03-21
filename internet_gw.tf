resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.wp_vpc.id

  tags = {
    Name = "internet_gw"
  }
}
output "internet_gw_id" {
  value = aws_internet_gateway.internet_gw.id
}
