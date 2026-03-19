# Terraform

This directory contains the Terraform configuration for Phase 2 of the Cloud Security Detection Engineering Lab.

## Purpose

Terraform will be used to define and manage AWS infrastructure for the project, replacing the manual setup used in Phase 1.

Planned resources include:

- CloudTrail
- S3
- SQS
- IAM roles and policies
- GuardDuty
- Lambda-based response actions

## Status

Initial Terraform skeleton created.

## Next Steps

- Add reusable modules
- Build S3 module
- Build SQS module
- Build IAM module
- Build CloudTrail module