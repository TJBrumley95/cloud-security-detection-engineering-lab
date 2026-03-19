output "aws_region" {
  description = "AWS region in use"
  value       = var.aws_region
}

output "project_name" {
  description = "Project name"
  value       = var.project_name
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "name_prefix" {
  description = "Computed name prefix for resources"
  value       = local.name_prefix
}