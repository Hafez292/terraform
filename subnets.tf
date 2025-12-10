resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public-subnet-1"
  }
}

resource "aws_route_table_association" "pub-rtb" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-router.id
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Public-subnet-2"
  }
}

resource "aws_route_table_association" "pub2-rtb" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-router.id
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_route_table_association" "pri-1-rtb" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private-router.id
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_route_table_association" "pri-2-rtb" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-router.id
}