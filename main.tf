provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "vcu-lug" {
  count = 5
  ami = "ami-03291866"
  instance_type = "t2.micro"
  security_groups = ["vcu-lug"]
  key_name = "vcu-lug"
}

resource "aws_instance" "vcu-lug-bastion" {
  ami = "ami-03291866"
  instance_type = "t2.micro"
  security_groups = ["vcu-lug"]
  key_name = "vcu-lug"
}


output "instance_ips" {
  value = ["${aws_instance.vcu-lug.*.public_ip}"]
}

output "bastion_ip" {
  value = ["${aws_instance.vcu-lug-bastion.*.public_ip}"]
}



