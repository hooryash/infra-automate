resource "aws_instance" "vicks-web-01" {
	count 		= "${var.EC2_COUNT}"
	ami		= "${var.AMIS}"
	instance_type	= "${var.AWS_INSTANCE_TYPE}"
	subnet_id	= "${var.AWS_SUBNET_ID}"
	tags = {
		Name = "vicks-web-01"
	}
}
