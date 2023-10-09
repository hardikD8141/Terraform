# My Terraform Project

**Manage AWS resources with Terraform: Create an S3 Bucket and CloudFront Distribution**

---

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Initialization](#initialization)
  - [Applying Configuration](#applying-configuration)
  - [Destroying Resources](#destroying-resources)
- [Notes](#notes)

## Introduction

This Terraform project automates the creation and management of AWS resources. It sets up an S3 bucket for hosting static assets and a CloudFront distribution to serve those assets efficiently.

## Getting Started

Follow these steps to get started with your Terraform project:

### Prerequisites

Ensure that you have the following software installed on your system:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)

### Initialization

1. avigate to the project directory:

   ```bash
   cd Terraform
   ```

2. Initialize Terraform to set up your working environment:

   ```bash
   terraform init
   ```

### Applying Configuration

1. Create a `terraform.tfvars` file with your configuration variables. Example:

   ```bash
    aws_region   = "ap-south-1" # Replace with your desired AWS region
    bucket_name  = "my-unique-bucket-name"  # Replace with your S3 bucket name
   ```

2. Apply the Terraform configuration to create resources:

   ```bash
   terraform apply
   ```

   Terraform will create the S3 bucket and CloudFront distribution.

### Destroy Resources

1. To destroy the created resources, run:

   ```
   terraform destroy
   ```

   Confirm the destruction when prompted.

## Notes

1. Make sure to follow best practices for managing your AWS credentials and secrets securely.
2. Be cautious when using terraform destroy as it will remove the infrastructure you've created.
