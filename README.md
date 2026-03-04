# Cloud SIEM Detection Engineering Project  
AWS CloudTrail + Splunk (SQS-Based S3 Ingestion)

## Overview

This project simulates a cloud security monitoring pipeline using AWS CloudTrail logs ingested into Splunk via an SQS-based S3 architecture.  

The goal is to design and implement practical cloud detection logic focused on IAM abuse, privilege escalation, and suspicious activity in AWS environments.

This lab models a real-world security engineering workflow:
- Log ingestion
- Index design
- SPL-based detection engineering
- Alert logic development
- Investigation workflow documentation

---

## Architecture

CloudTrail → S3 → SQS → Splunk → Detection Logic

### Components

- **AWS CloudTrail**
  - Management events enabled
  - Logs delivered to S3

- **Amazon S3**
  - Stores CloudTrail JSON log files

- **Amazon SQS (Main Queue)**
  - Receives S3 event notifications

- **Amazon SQS (Dead Letter Queue)**
  - Captures failed ingestion events
  - Prevents silent data loss

- **Splunk Enterprise (60-Day Trial)**
  - SQS-based S3 input configured
  - Dedicated `cloudtrail` index
  - Sourcetype: `aws:cloudtrail`

---

## Log Ingestion Details

- Input Type: SQS-Based S3
- Index: `cloudtrail`
- Sourcetype: `aws:cloudtrail`
- Region: us-east-1
- License: Splunk Enterprise Trial

Validation Query:

```spl
index=cloudtrail | stats count by eventSource

---

## Search Queries & Detections

- `iam_access_key_creation.spl`: Used to create Alert and Dashboard item for tracking events on CreateAccessKey
- `iam_root_user_actions_count.spl`: Used to create table to give count of all actions from root user and time of most recent occurence of event
- `iam_root_user_usage_sourceip.spl`: Used to create area chart to show usage of root user by sourceIP to check for spikes and unknown IP addresses