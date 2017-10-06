resource "aws_instance" "miner-1" {
  ami = "${lookup(var.vpc_amis, var.vpc_region)}"
  availability_zone = "${var.availability_zones["zone-1a"]}"
  instance_type = "${var.miner_instance_type}"
  key_name = "${var.aws_key_name}"
  vpc_security_group_ids = ["${aws_security_group.miner.id}"]
  subnet_id = "${aws_subnet.eu-west-1a-private.id}"
  source_dest_check = false
  tags {
    Name = "Miner 1"
  }
}
