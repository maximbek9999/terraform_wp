resource "aws_subnet" "pub_sub_a" {
  vpc_id     = aws_vpc.wp_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub_sub_a"
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id     = aws_vpc.wp_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "pub_sub_b"
  }
}

output "pub_sub_a_id" {
  value = aws_subnet.pub_sub_a.id
}

output "pub_sub_b_id" {
  value = aws_subnet.pub_sub_b.id
}
