resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "sprints-terraform-VPC"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "sprints-igw"
  }
}

resource "aws_eip" "nat" {
  vpc = true
   tags = {
        Name = "NAT Gateway EIP"
    }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.nat_subnet_id
  tags = {
    Name = "sprints NAT Gateway"
  }
  depends_on = [aws_internet_gateway.igw]
}