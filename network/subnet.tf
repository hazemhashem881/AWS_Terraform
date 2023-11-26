resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_1
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_subnet_1"
  }
}




resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_2
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_subnet_2"
  }
}


resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_1

  tags = {
    Name = "private_subnet_1"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_2

  tags = {
    Name = "private_subnet_2"
  }
}