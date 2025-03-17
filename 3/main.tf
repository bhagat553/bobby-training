resource "aws_instance" "example_server" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  count         = 10

  tags = {
    Name = "JacksBlogExample"
  }
}
