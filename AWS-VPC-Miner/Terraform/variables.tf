variable "aws_key_path" {}

variable "aws_key_name" {}

variable "aws_credentials" {}

variable "chef_user" {}

variable "chef_user_key" {}

variable "chef_server_url" {}

//variable "chef_secret_key" {}

variable "vpc_region" {
    default = "eu-west-1"
}

variable "availability_zones" {
    type = "map"

    default = {
        zone-1a = "eu-west-1a"
        zone-1b = "eu-west-1b"
        zone-1c = "eu-west-1c"
    }
}

variable "vpc_amis" {
    type = "map"
    description = "VPC AMIs"
    default = {
        #Amazon Linux AMI 2017.09.0 (HVM), SSD Volume Type - ami-acd005d5
        eu-west-1 = "ami-acd005d5"
    }
}

variable "vpc_cidr_block" {
    description = "VPC CIDR block"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
    description = "Public Subnet CIDR block"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr_block" {
    description = "Private Subnet CIDR block"
    default = "10.0.1.0/24"
}

variable "database_instance_type" {
    default = "t2.micro"
}

variable "webserver_instance_type" {
    default = "t2.micro"
}

# g2.xlarge2 or g2.xlarge8 are some choices here, note they are expesive!
variable "miner_instance_type" {
    default = "t2.micro"
}