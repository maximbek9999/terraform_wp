resource "aws_subnet" "priv_sub_" {
  vpc_id     = aws_vpc.wp_vpc.id
  cidr_block = "10.0.11.0/24"

  tags = {
    Name = "priv_sub_a"
  }
}

resource "aws_subnet" "priv_sub_b" {
  vpc_id     = aws_vpc.wp_vpc.id
  cidr_block = "10.0.12.0/24"

  tags = {
    Name = "priv_sub_b"
  }
}

output "priv_sub_a_id" {
  value = aws_subnet.priv_sub_a.id
}

output "priv_sub_b_id" {
  value = aws_subnet.priv_sub_b.id
}