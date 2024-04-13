resource "aws_vpc" "kaizen" {
  cidr_block = var.vpc_settings[0].vpc_cidr
  enable_dns_support = var.vpc_settings[0].enable_dns_support
  enable_dns_hostnames = var.vpc_settings[0].enable_dns_hostname
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.kaizen.id
  cidr_block = var.subnet_cidr[0].cidr
  map_public_ip_on_launch =var.subnet_cidr[0].map_public_ip_on_launch
  availability_zone = var.subnet_cidr[0].availability_zone

  tags = {
    Name = var.subnet_cidr[0].subnet_name
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.kaizen.id
  cidr_block = var.subnet_cidr[1].cidr
  map_public_ip_on_launch =var.subnet_cidr[1].map_public_ip_on_launch
  availability_zone = var.subnet_cidr[1].availability_zone

  tags = {
    Name = var.subnet_cidr[1].subnet_name
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.kaizen.id
  cidr_block = var.subnet_cidr[2].cidr
  map_public_ip_on_launch =var.subnet_cidr[2].map_public_ip_on_launch
  availability_zone = var.subnet_cidr[2].availability_zone

  tags = {
    Name = var.subnet_cidr[2].subnet_name
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.kaizen.id
  cidr_block = var.subnet_cidr[3].cidr
  map_public_ip_on_launch =var.subnet_cidr[3].map_public_ip_on_launch
  availability_zone = var.subnet_cidr[3].availability_zone

  tags = {
    Name = var.subnet_cidr[3].subnet_name
  }
}

resource "aws_internet_gateway" "homework5_igw" {
  vpc_id = aws_vpc.kaizen.id

  tags = {
    Name = "IGW"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.kaizen.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.homework5_igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.kaizen.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.homework5_igw.id
  }

  tags = {
    Name = "private-rt"
  }
}

resource "aws_route_table_association" "public_subnet_assoc" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public_subnet_assoc_2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private_subnet_assoc" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private_subnet_assoc_2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private-rt.id
}