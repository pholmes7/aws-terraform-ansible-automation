# DevOps Tech Challenge 3

## Project Overview

This project demonstrates Infrastructure as Code (IaC) and configuration management using Terraform and Ansible on AWS.

Terraform provisions the AWS infrastructure, including an EC2 instance, S3 bucket, IAM resources, and security groups. Ansible configures the EC2 instance, installs Nginx, and deploys a simple "Hello, World!" webpage.

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
- WSL / Ubuntu

## Project Structure

- `terraform/` - AWS infrastructure configuration
- `ansible/` - Server configuration and web files
- `README.md` - Project documentation

## Prerequisites

- AWS account and configured AWS CLI
- Terraform
- Ansible running through WSL/Ubuntu
- Git
- AWS EC2 key pair for SSH access

## Infrastructure Deployment

Terraform provisions:

- Ubuntu EC2 instance
- S3 bucket
- IAM role and EC2 instance profile
- Least-privilege S3 permissions
- Security group for HTTP and restricted SSH access
- Public IP and DNS outputs

Infrastructure is formatted, initialized, validated, planned, and deployed using the standard Terraform workflow.

## EC2 & SSH Validation

Before using Ansible, the EC2 infrastructure was validated independently.

- Confirmed the EC2 instance was running with a public IP.
- Verified HTTP, SSH, and outbound security group rules.
- Connected manually from WSL/Ubuntu using SSH.
- Confirmed the Ubuntu server could reach external package repositories.

This ensured that networking and SSH were working before introducing Ansible.

## Ansible Configuration

Ansible runs from WSL/Ubuntu and connects to the EC2 instance using SSH.

The Ansible playbook automatically:

- Updates the Ubuntu package cache
- Installs Nginx
- Starts and enables the Nginx service
- Deploys the custom "Hello, World!" webpage

Connectivity was validated using the Ansible ping module before running the playbook.

The playbook was executed twice to verify idempotency. The first run configured the server with `changed=3`, while the second completed with `changed=0`, confirming that Ansible did not make unnecessary changes once the desired configuration was reached.

## Website Validation

To be completed.

## Cleanup

Infrastructure can be removed after testing using `terraform destroy`.