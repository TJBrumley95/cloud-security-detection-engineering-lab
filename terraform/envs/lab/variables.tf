variable "aws_region" {
  description = "AWS region for lab resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for tagging and naming"
  type        = string
  default     = "cloud-security-detection-engineering-lab"
}

variable "environment" {
  description = "Environment name for the deployment"
  type        = string
  default     = "lab"
}