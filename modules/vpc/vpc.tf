#vpc demo
resource "aws_vpc" "vicks-vpc-01" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"
  tags = {
    Name = "vicks-vpc-01"
  }

}

resource "aws_subnet" "main_pub_sb" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.main_pub_sb}"
  tags = {
    Name = "main-pub-sb"

  }

}

output "vpc_id" {
  value = "${aws_vpc.vicks-vpc-01.id}"
}
output "subnet_id" {
  value = "${aws_subnet.main_pub_sb.id}"
}
