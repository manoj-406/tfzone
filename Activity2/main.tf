resource "aws_vpc" "base" {
  cidr_block = var.vpcid
  tags = {
    Name = "terraform1"
    env  = "dev"
  }
}

resource "aws_subnet" "one" {
  vpc_id            = aws_vpc.base.id
  availability_zone = var.availability_zone[0]
  cidr_block        = var.subnet_cidr[0]
  depends_on        = [aws_vpc.base]
  tags = {
    Name = var.tags[0]
  }
}

resource "aws_subnet" "two" {
  vpc_id            = aws_vpc.base.id
  availability_zone = var.availability_zone[1]
  cidr_block        = var.subnet_cidr[1]
  depends_on        = [aws_vpc.base]
  tags = {
    Name = var.tags[1]
  }
}

resource "aws_subnet" "three" {
  vpc_id            = aws_vpc.base.id
  availability_zone = var.availability_zone[2]
  cidr_block        = var.subnet_cidr[2]
  depends_on        = [aws_vpc.base]
  tags = {
    Name = var.tags[2]
  }
}

resource "aws_subnet" "four" {
  vpc_id            = aws_vpc.base.id
  availability_zone = var.availability_zone[3]
  cidr_block        = var.subnet_cidr[3]
  depends_on        = [aws_vpc.base]
  tags = {
    Name = var.tags[3]
  }
}
