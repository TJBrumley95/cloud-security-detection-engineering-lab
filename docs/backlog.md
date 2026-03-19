# Phase 2 Backlog

## 🟥 Backlog

---

### Story: Create Initial Threat Model

**Description:**  
Define the core assets, threats, and security concerns to guide detection engineering decisions.

**Acceptance Criteria:**
- [ ] Key assets are identified  
- [ ] Initial threats are documented  
- [ ] Mitigation areas are outlined  

**Subtasks:**
- [ ] Create threat-model.md  
- [ ] Define assets  
- [ ] Define initial threats  
- [ ] Add mitigation section  

---

### Story: Define Detection Expansion Framework

**Description:**  
Establish structure and initial targets for expanding detection coverage beyond IAM.

**Acceptance Criteria:**
- [ ] Detection categories are defined  
- [ ] New detection areas identified (CloudTrail, S3, GuardDuty)  
- [ ] Detection file structure created  

**Subtasks:**
- [ ] Create detections/cloudtrail/  
- [ ] Create detections/s3/  
- [ ] Create detections/guardduty/  
- [ ] Add detections README  
- [ ] Define first detection targets  

---

### Story: Define Testing and Scenario Framework

**Description:**  
Create a structured approach for simulating security events and validating detections.

**Acceptance Criteria:**
- [ ] Testing methodology is documented  
- [ ] Scenario structure is defined  
- [ ] Initial scenarios are outlined  

**Subtasks:**
- [ ] Create testing-methodology.md  
- [ ] Define scenario template  
- [ ] Create scenarios directory  
- [ ] Add initial scenario stubs  

---

### Story: Implement CI/CD Pipeline for Terraform

**Description:**  
Introduce a GitHub Actions pipeline to validate and manage Terraform deployments securely.

**Acceptance Criteria:**
- [ ] GitHub Actions workflow created  
- [ ] Terraform validate runs successfully  
- [ ] Terraform plan runs successfully  
- [ ] Secrets are handled securely  

**Subtasks:**
- [ ] Create .github/workflows directory  
- [ ] Add terraform-validate workflow  
- [ ] Add terraform-plan workflow  
- [ ] Configure GitHub secrets  

---

### Story: Implement Basic Automated Response

**Description:**  
Introduce simple automated response actions to demonstrate detection-to-response workflows.

**Acceptance Criteria:**
- [ ] Lambda function created  
- [ ] Response action defined (e.g., disable access key)  
- [ ] Detection-to-response mapping documented  

**Subtasks:**
- [ ] Create automation/lambda directory  
- [ ] Write Lambda function  
- [ ] Define trigger conditions  
- [ ] Document runbook  

---

## 🟨 In Progress

---

### Story: Build Terraform Infrastructure Foundation

**Description:**  
Establish Terraform as the primary method for managing AWS infrastructure, replacing manual configuration from Phase 1.

**Acceptance Criteria:**
- [ ] Terraform project structure is created  
- [ ] Terraform can initialize successfully  
- [ ] AWS provider is configured  
- [ ] Base variables and environment structure are defined  

**Subtasks:**
- [ ] Create terraform directory structure  
- [ ] Add versions.tf  
- [ ] Add providers.tf  
- [ ] Add variables.tf  
- [ ] Add outputs.tf  
- [ ] Add terraform.tfvars.example  
- [ ] Create envs/lab structure  

---

## 🟩 Done

---

### Story: Establish Phase 1 Baseline and Documentation

**Description:**  
Capture all completed Phase 1 work and reorganize it into the new repository structure to create a clean baseline for Phase 2 development.

**Acceptance Criteria:**
- [x] All existing detections are moved into detections/iam/  
- [x] MITRE mapping is moved into mappings/  
- [x] Dashboard images are moved into dashboards/  
- [x] Architecture diagram is moved into architecture/  
- [x] Phase 1 overview document exists and reflects completed work  
- [x] Phase 2 project plan is created and structured  

**Subtasks:**
- [x] Move SPL detection files  
- [x] Move MITRE mapping file  
- [x] Move dashboard screenshots  
- [x] Move architecture diagram  
- [x] Create docs/phase1-overview.md  
- [x] Create docs/phase2-plan.md  