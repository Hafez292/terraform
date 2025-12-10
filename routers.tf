resource "aws_route_table" "public-router" {
  vpc_id = aws_vpc.vpc-1.id

  tags = { Name = "public-router" }
}

resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public-router.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table" "private-router" {
  vpc_id = aws_vpc.vpc-1.id

  tags = { Name = "private-router" }
}

