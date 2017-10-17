resource "aws_vpc" "services-vpc" {
    cidr_block = "${var.vpc_cidr_block}"
    enable_dns_hostnames = true
    tags {
        Name = "services-vpc"
    }
}