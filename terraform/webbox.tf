data "aws_ami" "webami" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = ["web-server*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webbox" {
  name          = "webbox"
  instance_type = "t2.micro"
  ami           = data.aws_ami.webami.id
}

output "ip_address" {
  value = aws_instance.webbox.public_ip
}