resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
} # creates server frontend in aws console
resource "aws_route53_record" "frontend" {
  zone_id = "aws_route53_zone.primary.zone_id"
  name    = "frontend DNS"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
data "aws_ami" "centos" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"

} # ami changes day to day it automatically gets ami from console
resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
