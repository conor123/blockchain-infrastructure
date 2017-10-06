/*
 * Web Servers
 */
resource "aws_instance" "web-1" {
    ami = "${lookup(var.vpc_amis, var.vpc_region)}"
    availability_zone = "${var.availability_zones["zone-1a"]}"
    instance_type = "${var.webserver_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.web.id}"]
    subnet_id = "${aws_subnet.eu-west-1a-public.id}"
    associate_public_ip_address = true
    source_dest_check = false

    provisioner "chef" {

        //environment     = "_default"
        //secret_key      = "${file("${var.chef_secret_key}")}"
        server_url      = "${var.chef_server_url}"
        user_name       = "${var.chef_user}"
        user_key        = "${file("${var.chef_user_key}")}"
        run_list        = ["role[web]"]
        node_name       = "webserver1"
        recreate_client = true
        fetch_chef_certificates = true
        //on_failure      = "continue"
        //version         = "12.4.1"
        connection {
            type        = "ssh"
            user        = "ec2-user" //
            private_key    = "${file("${var.aws_key_path}")}"
            //agent = false
        }
        attributes_json = <<-EOF
        {
            "app": {
                "cluster1": {
                      "nodes": [
                        "webserver1"
                    ]
                }
            }
        }
        EOF
    }

    tags {
        Name = "Web Server 1"
    }
}
