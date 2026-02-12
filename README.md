# Terraform AWS Multi-Environment Infrastructure

This project provisions AWS infrastructure using Terraform with support for
multiple isolated environments: **dev**, **staging**, and **production**.

## Features
- Modular Terraform design
- Environment-based infrastructure (dev / stg / prod)
- EC2 instances
- S3 buckets
- DynamoDB tables
- Security Groups
- Custom public subnet
- Default VPC usage

## Project Structure
- `infra-app/` – Reusable infrastructure module
- `main.tf` – Environment orchestration
- `variables.tf` – Input variables

## Usage
```bash
terraform init
terraform plan
terraform apply
