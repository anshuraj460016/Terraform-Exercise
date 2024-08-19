provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "intro" {
  ami                    = "ami-075be01e247ecf1ea"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-0dfae3f8522002638"]
  tags = {
    Name = "Dove-Instance"
    Project = "Dove"
  }
}
