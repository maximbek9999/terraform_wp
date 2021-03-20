resource "aws_eip" "nat_eip" {
  vpc = true
}
output "nat_eip_id" {
  value = aws_eip.nat_eip.public_ip
}