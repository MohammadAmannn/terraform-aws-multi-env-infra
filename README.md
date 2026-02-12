# terraform-aws-multi-env-infra

This project is a modular Terraform-based AWS infrastructure setup that provisions isolated dev, staging, and production environments from a shared infrastructure module.
Each environment includes its own S3 bucket, DynamoDB table, EC2 instances, security groups, and a custom public subnet, enabling consistent, repeatable, and scalable infrastructure provisioning using Infrastructure as Code (IaC).

