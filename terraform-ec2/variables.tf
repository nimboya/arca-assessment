variable "aws_region" {
    type     = string
    default  = "eu-west-1" 
}

variable "aws_access_key" {
    type     = string
    default  = "" 
}

variable "aws_secret_key" {
    type     = string
    default  = "" 
}


variable "ec2_ami" {
    type     = string
    default  = "ami-089cc16f7f08c4457"
}