# 🚨 Cloud Security Capstone: Data Breach Response with BCDR Strategy

## 📌 Project Overview

This project demonstrates a real-world **cloud security incident response scenario** on Google Cloud Platform (GCP), focusing on:

* 🔐 Security Remediation
* 🔄 Business Continuity
* 🛑 Disaster Recovery (BCDR)
* 📊 Compliance (PCI DSS)

---

## 🧠 Scenario

A production cloud environment suffered a **critical data breach** due to:

* Publicly exposed storage bucket
* Compromised virtual machine (malware activity)
* Overly permissive firewall rules
* Lack of monitoring and logging

As a Cloud Security Analyst, I was responsible for:

✔ Identifying vulnerabilities
✔ Containing the breach
✔ Recovering affected systems
✔ Ensuring business continuity
✔ Implementing disaster recovery

---

## 🎯 Objectives

* Analyze findings using Security Command Center
* Eliminate compromised resources
* Restore services using backup (Disaster Recovery)
* Secure storage and network configurations
* Implement least privilege access
* Achieve compliance with PCI DSS

---

## 🛠️ Tools & Technologies

* Google Cloud Platform (GCP)
* Security Command Center
* Compute Engine
* Cloud Storage
* VPC Firewall
* gcloud CLI

---

## 🔄 BCDR (Business Continuity & Disaster Recovery)

### 🛑 Disaster Recovery

* Used **Compute Engine Snapshots** as backup mechanism
* Restored VM (`cc-app-02`) from snapshot (`cc-app01-snapshot`)
* Removed compromised VM (`cc-app-01`)

### 🔁 Business Continuity

* Ensured minimal downtime during VM replacement
* Maintained controlled access using firewall rules
* Restored services without data loss

👉 This demonstrates real-world **BCDR implementation using GCP native tools**

---

## 🔧 Implementation Summary

### 1️⃣ Security Analysis

* Identified:

  * Public bucket access
  * Public IP exposure
  * Open SSH/RDP ports
  * Default service account misuse

---

### 2️⃣ Compute Engine Remediation

* Stopped compromised VM
* Created new VM from snapshot
* Enabled Secure Boot
* Removed public IP

---

### 3️⃣ Storage Security Fix

* Disabled public bucket access
* Enabled uniform bucket-level access

---

### 4️⃣ Firewall Hardening

* Restricted SSH access (IAP only)
* Removed overly permissive rules
* Enabled logging for monitoring

---

## 📜 Commands

All CLI commands used in this project are available here:

👉 `commands.sh`

---

## 🔍 Key Security Fixes

| Issue           | Fix                             |
| --------------- | ------------------------------- |
| Public Bucket   | Disabled public access          |
| Compromised VM  | Recreated from snapshot         |
| Public IP       | Removed                         |
| Open Ports      | Restricted                      |
| No Logging      | Enabled logging                 |
| Over-permission | Removed default service account |

---

## 📸 Screenshots

All screenshots are available in the `/images` folder.

---

## ✅ Results

* ✔ High severity vulnerabilities resolved
* ✔ Secure cloud architecture implemented
* ✔ Compliance improved (PCI DSS)
* ✔ Business continuity maintained
* ✔ Disaster recovery successfully executed

---

## 💡 Key Learnings

* Real-world cloud incident response workflow
* Importance of **BCDR strategies in cloud**
* Secure configuration best practices
* Network security & IAM hardening

---

## 🚀 Future Improvements

* Infrastructure as Code (Terraform)
* Automated security monitoring
* SIEM integration

---

## 👨‍💻 Author
Ayush Kumar Patel
Aspiring Cloud Security Engineer 🚀
Focused on building secure and resilient cloud systems.

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐
