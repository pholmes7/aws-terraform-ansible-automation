# DevOps Tech Challenge 3

## Project Overview

This project demonstrates Infrastructure as Code (IaC) and configuration management using Terraform and Ansible on AWS.

Terraform is used to provision the AWS infrastructure, including an EC2 instance, S3 bucket, IAM resources, and security groups. Ansible is used to configure the EC2 instance, install a web server, and deploy a simple "Hello, World!" webpage.

## Technologies Used

- AWS
- Terraform
- Ansible
- Amazon EC2
- Amazon S3
- AWS IAM
- Nginx
- Git
- GitHub

## Project Structure

- `terraform/` - Terraform infrastructure configuration
- `ansible/` - Ansible configuration and web files
- `README.md` - Project documentation

## Prerequisites

- AWS account and configured AWS CLI
- Terraform
- Ansible running through WSL/Ubuntu
- Git
- Existing AWS EC2 key pair for SSH access

## Infrastructure Deployment

Terraform provisions the AWS infrastructure required for the project:

- EC2 instance running Ubuntu
- S3 bucket
- IAM role and instance profile for EC2
- S3 permissions using least-privilege access
- Security group allowing HTTP on port 80
- SSH access on port 22 restricted to a trusted IP
- Public IP and DNS outputs for the EC2 instance

The infrastructure is deployed using:

1. `terraform init`
2. `terraform validate`
3. `terraform plan`
4. `terraform apply`

## Ansible Configuration

To be completed.

## Website Validation

To be completed.

## Cleanup

Infrastructure can be removed after testing using:

`terraform destroy`