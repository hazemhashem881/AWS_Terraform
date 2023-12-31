resource "aws_vpc" "myvpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "my-vpc"
  }
}