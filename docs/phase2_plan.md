# Phase 2 Project Plan – Cloud Security Detection Engineering Lab

## Overview

Phase 2 expands the initial CloudTrail + Splunk SIEM lab into a more complete **cloud security detection engineering platform**.

The goal is to evolve the project from basic log ingestion and IAM monitoring into a system that reflects real-world **cloud security operations**, including:

- Infrastructure as Code (Terraform)
- Expanded detection coverage
- Security event simulation and validation
- CI/CD pipeline integration and security
- Basic automated response (SOAR-lite)
- Threat modeling and framework alignment

This phase focuses on building **practical, production-like capabilities** rather than isolated features.

---

## Objectives

- Build and manage AWS infrastructure using Terraform  
- Expand detection coverage beyond IAM (CloudTrail, S3, GuardDuty)  
- Simulate and validate realistic security scenarios  
- Implement a secure CI/CD pipeline for infrastructure workflows  
- Introduce basic automated response using AWS Lambda  
- Map detections to MITRE ATT&CK and NIST CSF  
- Improve project structure and documentation for portfolio use  

---

## Architecture Direction

The system will follow a cloud-native detection pipeline:

CloudTrail → S3 → SQS → Splunk

Additional components introduced in Phase 2:

- Terraform-managed infrastructure
- GuardDuty integration
- Lambda-based response actions
- CI/CD pipeline for deployment and validation

---

## Core Capabilities

### 1. Infrastructure as Code

All AWS resources are defined and managed using Terraform.

Includes:
- CloudTrail configuration
- S3 log storage
- SQS queue for ingestion
- IAM roles and policies
- Optional GuardDuty and Lambda components

---

### 2. Detection Engineering

Expand detection coverage across multiple domains:

- IAM activity (existing, enhanced)
- CloudTrail tampering and logging changes
- S3 access and policy modifications
- GuardDuty findings

Each detection includes:
- SPL query
- description and purpose
- mapping to MITRE ATT&CK

---

### 3. Security Event Simulation

Create repeatable scenarios to validate detections:

- Access key creation
- Root user activity
- Failed console logins
- CloudTrail logging changes
- S3 policy changes

Each scenario includes:
- steps to generate event
- expected logs
- expected detection outcome

---

### 4. SIEM Visualization

Enhance dashboards to support investigation:

- IAM activity overview
- authentication and access patterns
- anomaly indicators
- security event summaries

---

### 5. CI/CD Pipeline Security

Implement a GitHub Actions pipeline for Terraform:

- terraform fmt / validate / plan
- secure credential handling
- least privilege IAM for automation

Focus on understanding and mitigating CI/CD risks:
- credential exposure
- overly permissive roles
- unreviewed deployments

---

### 6. Automated Response (SOAR-lite)

Introduce basic response automation using AWS Lambda:

- disable compromised access keys
- tag or flag suspicious resources

Link detections → response actions → runbooks

---

### 7. Threat Modeling & Framework Mapping

Document security posture and align with frameworks:

- Threat model (assets, threats, mitigations)
- MITRE ATT&CK mapping for detections
- NIST CSF mapping for controls

---

## Success Criteria

By the end of Phase 2, the project should demonstrate:

- Ability to build and manage cloud infrastructure with Terraform  
- Understanding of cloud detection engineering and SIEM workflows  
- Experience with log analysis and security event monitoring  
- Knowledge of CI/CD pipeline security considerations  
- Ability to simulate and investigate security scenarios  
- Alignment with industry frameworks (MITRE ATT&CK, NIST CSF)  

---

## Notes

This project is designed as a portfolio piece to demonstrate practical experience in:

- Cloud Security Engineering  
- Detection Engineering  
- Security Operations  
- Infrastructure Automation  

It prioritizes depth and real-world applicability over tool breadth.