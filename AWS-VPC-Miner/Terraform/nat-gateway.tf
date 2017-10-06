# Better than NAT Instance
resource "aws_nat_gateway" "nat-gw" {
  allocation_id = "${aws_eip.eip-nat.id}"
  subnet_id     = "${aws_subnet.eu-west-1a-public.id}"
  depends_on = ["aws_internet_gateway.default"]

  tags {
    Name = "NAT-GW"
  }
}
