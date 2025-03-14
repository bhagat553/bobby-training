variable "ec2_ami" {
  type = string
  default = "ami-003d574bab317de3"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "bucket_name" {
  type = string
}

variable "environment" {
  type = string
  default = "dev"
}

