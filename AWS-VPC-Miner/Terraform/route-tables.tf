resource "aws_route_table" "eu-west-1a-public" {
  vpc_id = "${aws_vpc.services-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default.id}"
  }
  tags {
    Name = "Services VPC - Route Table Public Subnet"
  }
}

resource "aws_route_table_association" "eu-west-1a-public" {
  subnet_id = "${aws_subnet.eu-west-1a-public.id}"
  route_table_id = "${aws_route_table.eu-west-1a-public.id}"
}


resource "aws_route_table" "eu-west-1a-private" {
  vpc_id = "${aws_vpc.services-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat-gw.id}"
  }
  tags {
    Name = "Services VPC - Route Table Private Subnet"
  }
}

resource "aws_route_table_association" "eu-west-1a-private" {
  subnet_id = "${aws_subnet.eu-west-1a-private.id}"
  route_table_id = "${aws_route_table.eu-west-1a-private.id}"

}

