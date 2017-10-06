resource "aws_subnet" "eu-west-1a-public" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${var.public_subnet_cidr_block}"
    availability_zone = "${var.availability_zones["zone-1a"]}"
    tags {
        Name = "Public Subnet"
    }
}
