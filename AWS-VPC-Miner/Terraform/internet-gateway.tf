resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.services-vpc.id}"
    tags {
        Name = "Services VPC - main"
    }
}
