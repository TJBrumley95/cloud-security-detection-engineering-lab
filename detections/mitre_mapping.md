# MITRE ATT&CK Mapping

This project maps AWS CloudTrail detections to MITRE ATT&CK techniques to align cloud monitoring activity with known adversary behaviors.

| Detection File | Detection Purpose | MITRE ATT&CK Technique | Rationale |
|---|---|---|---|
| iam_access_key_creation.spl | Detect creation of new IAM access keys | T1078 - Valid Accounts | New access keys can be used to establish persistent credential-based access |
| iam_root_user_actions_count.spl | Track actions performed by the AWS root account | T1078 - Valid Accounts | Root account usage represents highly privileged account activity |
| iam_root_user_usage_sourceip.spl | Monitor root account usage by source IP | T1078 - Valid Accounts | Root activity from unexpected IPs may indicate credential misuse |
| iam_consolelogin_failure_count.spl | Track failed AWS console login attempts | T1110 - Brute Force | Repeated failed login attempts may indicate password guessing or credential attacks |
| iam_priveleged_event_monitor.spl | Monitor high-privilege IAM modification events | T1098 - Account Manipulation | Policy attachment or group membership changes may indicate privilege escalation or persistence |
| iam_assume_role_activity.spl | Track detailed AssumeRole activity | T1078 - Valid Accounts | IAM role assumption may indicate privileged access or lateral movement |
| iam_assume_role_count.spl | Monitor role assumption frequency by role | T1078 - Valid Accounts | Unusual role usage volume may indicate abuse of trusted role-based access |