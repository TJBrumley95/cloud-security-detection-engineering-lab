# Phase 1 Overview – Cloud Security Detection Engineering Lab

## Overview

Phase 1 focused on building a foundational cloud security monitoring pipeline using AWS CloudTrail and Splunk.

The goal was to establish end-to-end visibility into AWS account activity and develop initial detection capabilities for identity and access-related events.

---

## Architecture

The Phase 1 architecture consists of the following pipeline:

CloudTrail → S3 → SQS → Splunk

- CloudTrail captures AWS API activity  
- Logs are stored in S3  
- SQS is used for log forwarding  
- Splunk ingests and analyzes the events  

---

## Core Components

### AWS Services

- CloudTrail (API activity logging)
- S3 (log storage)
- SQS (log forwarding mechanism)
- IAM (monitored entities and events)

---

### SIEM Integration

- Splunk Enterprise used for log ingestion and analysis
- Dedicated index for CloudTrail logs
- SPL queries used for detection logic
- Dashboards created for visualization

---

## Detection Coverage

Phase 1 focused primarily on IAM-related activity.

### Implemented Detections

- Access key creation monitoring  
- Root user activity tracking  
- Root user source IP analysis  
- Failed console login attempts  
- Privileged event monitoring  
- AssumeRole activity monitoring  
- AssumeRole source IP tracking  

---

## Dashboards

- IAM activity monitoring dashboard  
- Visualizations for:
  - login failures
  - root usage
  - access key events
  - source IP patterns  

---

## MITRE ATT&CK Mapping

Detections were mapped to MITRE ATT&CK techniques to align monitoring with known adversary behaviors.

Examples include:

- Account manipulation  
- Valid accounts usage  
- Privilege escalation  

---

## Testing Approach

Events were generated manually using:

- AWS Console  
- AWS CLI  

This allowed validation of:

- log ingestion  
- detection accuracy  
- dashboard visibility  

---

## Key Outcomes

- Established a working SIEM ingestion pipeline  
- Developed foundational detection engineering skills  
- Built visibility into IAM-related activity  
- Created initial dashboards for monitoring and analysis  

---

## Limitations

Phase 1 had the following limitations:

- Detection coverage limited primarily to IAM events  
- No Infrastructure as Code (manual setup)  
- No automated response mechanisms  
- Limited scenario-based validation  
- No CI/CD integration  

---

## Transition to Phase 2

Phase 2 focuses on expanding this foundation into a more complete cloud security platform by introducing:

- Terraform-based infrastructure  
- Broader detection coverage (S3, CloudTrail, GuardDuty)  
- Security event simulation and validation  
- CI/CD pipeline integration  
- Basic automated response  
- Threat modeling and framework alignment  