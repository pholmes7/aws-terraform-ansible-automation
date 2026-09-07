data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "web_sg" {
  name        = "${var.project_name}-sg"
  description = "Security group for Tech Challenge 3 web server"
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name = "${var.project_name}-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80

  description = "Allow HTTP traffic"
}


resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = var.ssh_allowed_cidr
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22

  description = "Allow SSH from trusted IP"
}


resource "aws_vpc_security_group_egress_rule" "all_outbound" {
  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"

  description = "Allow all outbound traffic"
}