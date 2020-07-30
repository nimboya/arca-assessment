provider "aws" {
    region = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "acra_instance" {
    ami           = var.ec2_ami
    instance_type = "t2.small"

    tags = {
        Name = "ArcaPayment"
    }
}