resource "aws_vpc" "base" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraform1"
    env  = "dev"
  }
}

resource "aws_subnet" "one" {
  vpc_id            = "vpc-093eb31b7df83b650"
  availability_zone = "ap-south-1a"
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name = "web1"
  }
}

resource "aws_subnet" "two" {
  vpc_id            = "vpc-093eb31b7df83b650"
  availability_zone = "ap-south-1b"
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name = "web2"
  }
}

resource "aws_subnet" "three" {
  vpc_id            = "vpc-093eb31b7df83b650"
  availability_zone = "ap-south-1a"
  cidr_block        = "10.0.3.0/24"
  tags = {
    Name = "app1"
  }
}

resource "aws_subnet" "four" {
  vpc_id            = "vpc-093eb31b7df83b650"
  availability_zone = "ap-south-1b"
  cidr_block        = "10.0.4.0/24"
  tags = {
    Name = "app2"
  }
}
