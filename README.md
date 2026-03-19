# Cloud Security Detection Engineering Lab

## Overview

This project demonstrates a cloud-native security monitoring and detection engineering pipeline built using AWS and Splunk.

It began as a focused lab on AWS CloudTrail ingestion and IAM detections (Phase 1), and is being expanded into a more complete cloud security platform (Phase 2).

---

## Phase 1 Summary

Phase 1 established a working SIEM pipeline:

- AWS CloudTrail → S3 → SQS → Splunk
- IAM-focused detections (access keys, root usage, failed logins, AssumeRole)
- Basic dashboards for monitoring and visualization
- MITRE ATT&CK mapping for detections

📄 See full details:  
`docs/phase1-overview.md`

---

## Phase 2 Expansion

Phase 2 focuses on expanding the project into a more complete security engineering platform:

- Infrastructure as Code (Terraform)
- Expanded detection coverage (CloudTrail, S3, GuardDuty)
- Security event simulation and testing
- CI/CD pipeline integration and security
- Basic automated response (SOAR-lite)
- Threat modeling and framework alignment

📄 See project plan:  
`docs/phase2-plan.md`

---

## Architecture

Pipeline:

CloudTrail → S3 → SQS → Splunk

> Architecture diagram will be updated for Phase 2.

---

## Repository Structure

```text
architecture/      # diagrams and architecture notes
detections/        # Splunk detection queries (SPL)
dashboards/        # dashboard screenshots and notes
mappings/          # MITRE ATT&CK and NIST mappings
scenarios/         # test scenarios and simulations
terraform/         # infrastructure as code
automation/        # Lambda response actions
cicd/              # CI/CD pipeline configs
docs/              # project documentation