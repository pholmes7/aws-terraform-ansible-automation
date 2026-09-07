variable "aws_region" {
  description = "AWS region used to deploy resources"
  type        = string
  default     = "us-east-2"
}

variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
  default     = "tech-challenge-3"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_allowed_cidr" {
  description = "Public IP address allowed to SSH into EC2"
  type        = string
}

variable "key_name" {
  description = "Name of the AWS EC2 key pair used for SSH access"
  type        = string
}