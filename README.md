# Data Leak Protection

This repository contains PowerShell scripts designed to improve automation and enforce best practices in DevOps workflows. These tools are especially useful for WordPress deployments and ensuring that SQL database exports are clean and compliant.

---

## Included Scripts

### 1. `cleanup-wordpress-sql.ps1` — Remove SQL Dumps from WordPress Directory

🔹 **Purpose**: Prevent accidental commits or deployments of `.sql` database dump files during CI/CD builds.

🔹 **What it does**:
- Looks for `.sql` files in the `wordpress` directory.
- Deletes them if any are found.
- Logs the action for traceability.
  
### 2. detect-unauthorized-emails.ps1 — Scan SQL Files for PII
🔹 **Purpose**: Scans .sql database dumps for email addresses and checks if any of them are unauthorized or sensitive.

🔹 **What it does**:

Searches all .sql files in the db/ folder.

Uses regex to detect email addresses.

Ignores known/trusted addresses.

Logs unauthorized emails and fails the pipeline if any are found.

## Use Cases
✅ Deployment pipeline sanitation

✅ PII/Compliance scanning (e.g., GDPR)

✅ CI/CD security automation

## Requirements
PowerShell 5.1+ or PowerShell Core (7+)

Run in CI/CD environment (e.g., Azure DevOps, GitHub Actions, Jenkins)
