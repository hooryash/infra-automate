module "vicks-vpc-dev" {
	source	   = "../modules/vpc"
	vpc_cidr   = "192.168.0.0/16"
	tenancy	   = "default"
	vpc_id	   = "${module.vicks-vpc-dev.vpc_id}"
	main_pub_sb = "192.168.1.0/24"

}

module "vicks-ec2-dev" {
	source	    = "../modules/ec2"
	EC2_COUNT   = "1"
	AMIS	    = "ami-04b9e92b5572fa0d1"
	AWS_INSTANCE_TYPE = "t2.micro"
	AWS_SUBNET_ID   = "${module.vicks-vpc-dev.subnet_id}"
}

