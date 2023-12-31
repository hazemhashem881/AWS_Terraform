resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_1
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_a
  tags = {
    Name = "Public_subnet_1"
  }
}




resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_2
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_b
  tags = {
    Name = "Public_subnet_2"
  }
}


resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_1
  availability_zone = var.availability_zone_a
  tags = {
    Name = "private_subnet_1"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_2
  availability_zone = var.availability_zone_b
  tags = {
    Name = "private_subnet_2"
  }
}