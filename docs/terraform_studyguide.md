# Terraform Study Guide

## Overview

This study guide is being built alongside hands-on project work to reinforce Terraform concepts and prepare for the Terraform Associate certification.

---

## Key Terms

### Terraform
- **Definition:** Infrastructure as Code (IaC) tool used to define and manage infrastructure through configuration files.
- **Use/Application:** Automates creation and management of AWS resources such as S3, IAM, and CloudTrail.

---

### Provider
- **Definition:** Plugin that allows Terraform to interact with a specific platform (e.g., AWS).
- **Use/Application:** The AWS provider enables Terraform to create and manage AWS resources.

---

### Resource
- **Definition:** A piece of infrastructure managed by Terraform (e.g., S3 bucket, IAM role).
- **Use/Application:** Defined in `.tf` files to create actual infrastructure in AWS.

---

### Variable
- **Definition:** Input value used to parameterize Terraform configurations.
- **Use/Application:** Allows reuse of configurations across environments (e.g., region, project name).

---

### Output
- **Definition:** Value returned by Terraform after execution.
- **Use/Application:** Used to display or pass values between modules.

---

### Local
- **Definition:** Computed value defined within Terraform configuration.
- **Use/Application:** Used for reusable expressions like naming conventions.

---

### Module
- **Definition:** A reusable collection of Terraform configurations.
- **Use/Application:** Used to organize infrastructure (e.g., S3 module, IAM module).

---

### State
- **Definition:** Terraform’s record of infrastructure it manages.
- **Use/Application:** Tracks what resources exist and their current configuration.

---

### tfvars file
- **Definition:** File used to assign values to Terraform variables.
- **Use/Application:** Stores environment-specific values (e.g., region, environment name).

---

## Concepts

### Infrastructure as Code (IaC)
Terraform allows infrastructure to be defined in code, enabling version control, repeatability, and automation.

---

### Terraform Workflow

1. `terraform init`
   - Initializes project and downloads providers

2. `terraform plan`
   - Shows what changes will be made

3. `terraform apply`
   - Applies changes to infrastructure

4. `terraform destroy`
   - Removes infrastructure

---

### Root Module vs Child Module

- **Root Module:** The main configuration directory (e.g., `terraform/`)
- **Child Module:** Reusable modules called from the root (e.g., `modules/s3`)

---

### Environment Separation

Using directories like:

- envs/lab/
- envs/dev/
- envs/prod/

Allows different environments to use the same infrastructure code with different values.

---

## Practical Notes (From Lab)

- Terraform uses AWS CLI credentials by default
- `terraform.tfvars` should not be committed (contains environment-specific values)
- `.tfvars.example` is used as a template
- Default tags help track and organize resources in AWS
- Using `locals` helps standardize naming across resources

---

## Commands Reference

terraform init  
terraform validate  
terraform plan  
terraform apply  
terraform destroy  

---

## Future Topics to Add

- Remote state (S3 backend)
- State locking (DynamoDB)
- Data sources
- Workspaces
- Lifecycle rules
- Provisioners (optional)
- CI/CD integration