resource "aws_instance" "example_server" {
  ami           = var.ec2_ami
  instance_type = var.instance_type

  tags = {
    Name = "bobby-rhel-v2"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "copyimages" {
  bucket = var.bucket_name
  tags = {
    Name          = var.bucket_name
    Environment = var.environment
  }
}
