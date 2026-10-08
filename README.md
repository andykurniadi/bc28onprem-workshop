# Business Central 28 On-Premises Email Workshop

This repository contains an end-to-end workshop for configuring Microsoft Dynamics 365 Business Central 28 on-premises email integration with Microsoft Entra ID, Microsoft 365, and Exchange Online.

## Lab sequence

### Module 1: Getting Started with Business Central

**Module #1-1: Exercise (bc-online)**
- Exercise - Sign in to Business Central
- Own Exercise
  - Enable HTTPS on BC on-prem with Self-signed Cert
  - Enable SSL SOAP and OData Service
  - Setup: Business Central 28 (Hyper-V VM) — External HTTPS API Access
  - Create new Application Registration for BC Onprem Integration
  - Creating New Server Instance BC280-Entra with OAuth2.0(MS Entra ID) Authentication
  - Expose Server Instance BC280-EntraService to External HTTPS
  - Creating New Server Instance BC280-NAVUP with NAVUserPassword Authentication
  - Expose Server Instance BC280-NAVUP to External HTTPS

### Module 2: Company & Organization Setup
**Module #3-2: Exercise**
- Exercise - Create a company with demo data

**Module #3-3: Exercise**
- Exercise - Create a new customer template

**Module #3-5: Exercise (bc-online)**
- Exercise - Add a new user

### Module 3: Email & Communication Setup

**Module #3-6: Exercise (Own)**
- Own Exercise
  - Set up email for Current user
  - Creating Document Sending Profile
  - Email Send Scenario
  - Send/Print confirmation
  - Sent Email

**Module #3-7: Exercise**
- Exercise - Set up and send email
- Own Exercise
  - Set Up Email "Public Folders" Logging In Exchange Online
  - Set Up Shared Mailbox for BC on-prem On Exchange Online
  - Setup Email Logging on BC on-prem
  - Setup Own Outlook Integration
  - SMTP Email Account with Oauth2.0 Custom:

### Module 4: Creating Business Objects - Tables & Pages

**Module 4-2: Exercise**
- Exercise - Create a table

**Module #4-4: Exercise**
- Exercise - Create a Card page
- Exercise - Create a List page

**Module #4-8: Exercise**
- Exercise - Create a table extension
- Exercise - Create a page extension
- Own Exercise
  - Attach Debug Test
  - Snapshot Debug Test, download and profiler

### Module 5: Reporting & Analytics

**Module #5-4: Exercise**
- Exercise - Create a basic report

**Module #5-7: Exercise**
- Exercise - Create a processing-only report

### Module 6: Programming in AL

**Module #6-1: Exercise**
- Exercise - Discover the intrinsic data types
- Exercise - Use logical and relational expressions
- ✅ Page implementation added

**Module #6-2: Exercise**
- Exercise - Use conditional and compound statements

**Module #6-3: Exercise**
- Exercise - Use built-in functions

**Module #6-7: Exercise**
- Exercise - Events and triggers

**Module #6-8: Exercise**
- Exercise - Create an interface

**Module #6-9: Exercise**
- Exercise - Use data manipulation statements
- ✅ Valid object ID for this project
- Plan for implementation points 1 to 5
- Exercise - Custom functions

**Module #6-10: Exercise**
- Exercise - Multilanguage development

### Module 7: File Handling & XMLports

**Module #7-1: Exercise**
- Own Exercise:
  - Creating a New Skill:
  - Creating custom prompt:
- Exercise - Read and write files

**Module #7-2: Exercise**
- Exercise - Create an XMLport to export XML data

### Module 8: Integration & Web Services

**Module #8-2: Exercise**
- Own Exercise:
  - Create Customer_ws for ODATA, SOAP and API Service
  - Create C# Console Client Consume BC SOAP web service

**Module #8-3: Exercise**
- Exercise - Connect to external REST services
- Own Exercise:
  - Generate page to connect REST API from fresh Prompt

**Module #8-4: Exercise**
- Exercise - Build a control add-in object

### Module 9: User Interface & Role Centers

**Module #9-2: Exercise**
- Exercise - Create a Role Center page with an Activity page
- 6. Final Recommendation

**Module #9-3: Exercise**
- Exercise - Build a wizard page with Assisted Setup

**Module #9-4: Exercise**
- Exercise - Create a notification

### Module 10: Business Logic & Workflows

**Module #10-3: Exercise**
- Exercise - Add tables and pages for master data

**Module #10-4: Exercise**
- Exercise - Create example documents

### Module 11: DevOps & CI/CD

**Module #11-1: Exercise**
- Exercise - Create an Azure DevOps organization and project

**Module #11-2: Exercise**
- Exercise - Source control with Git

**Module #11-3: Exercise**
- Exercise - Use branching and merging with Git

**Module #11-4: Exercise**
- Exercise - Use Docker to test the latest Business Central version

**Module #11-6: Exercise**
- Exercise - Use Azure Pipelines for CI/CD with Business Central

**Module #11-7: Exercise**
- Exercise - Work with Azure Boards

### Module 12: Power Platform & Advanced Integration

**Module #12-1: Exercise**
- Own Exercise:
  - Install and configure On-prem DataGateway

**Module #12-2: Exercise**
- Exercise - Create the customer financial details app in Power Apps

**Module #12-3: Exercise**
- Exercise - Create a flow for sending emails when a new item is created in Power Automate (Require Online)

**Module #12-4: Exercise**
- Exercise - Create a table in Microsoft Dataverse
- Own Exercise - Connect to Dataverse

**Module #12-5: Exercise**
- Exercise - Create a testing process
  - Create custom connector Get Customers with OAuth2.0
  - Creating Canvas App with BC28 OnPrem Custom Connector

## Prerequisites

### Core Infrastructure (Required for all modules)
- ✓ Windows Server 2022 or later (Hyper-V guest or cloud VM)
- ✓ Business Central 28 on-premises installation
- ✓ Business Central Server instance (referred to as `BC280` in this workshop)
- ✓ Local administrator access to the BC server and IIS Manager
- ✓ HTTPS certificate for external access (self-signed or trusted CA)

### Development Tools (Required for Modules 4, 5, 6, 7, 8, 9, 10)
- ✓ Visual Studio Code (latest version)
- ✓ AL Language Extension for Visual Studio Code
- ✓ .NET Framework 4.7.2 or higher
- ✓ C# and Visual Studio (optional, for Module 8 - REST/SOAP integration)
- ✓ Basic AL programming language knowledge

### Cloud & Identity Management (Required for Modules 1, 3, 12)
- ✓ Microsoft Entra tenant (formerly Azure AD)
- ✓ Permissions to create and manage app registrations in Entra
- ✓ Microsoft 365 tenant with administrative access
- ✓ Basic understanding of OAuth2.0 and authentication concepts

### Email & Communication (Required for Module 3)
- ✓ Exchange Online administration access
- ✓ Shared mailbox or Microsoft 365 account for testing
- ✓ PowerShell 7 installed on your workstation
- ✓ Outlook (for testing email integration)
- ✓ [Module 3-6, 3-7] Specific: Exchange Online admin permissions and SMTP access

### Source Control & DevOps (Required for Module 11)
- ✓ Azure DevOps organization and project
- ✓ Git command-line tools installed
- ✓ GitHub account or Azure Repos access
- ✓ Docker Desktop installed and running
- ✓ PowerShell 7 for automation scripts
- ✓ [Module 11-4] Specific: Docker support for testing BC versions
- ✓ Basic understanding of Git workflow (branching, commits, merging)

### Power Platform & Advanced Integration (Required for Module 12)
- ✓ Power Platform environment access
- ✓ Power Apps environment provisioned
- ✓ Power Automate access
- ✓ Microsoft Dataverse (optional, for Module 12-4)
- ✓ Power Apps and Power Automate licenses (included in M365 E3/E5)
- ✓ [Module 12-1] Specific: On-premises Data Gateway (download and install)

### Supporting Tools (Recommended throughout)
- ✓ Postman or similar REST API testing tool
- ✓ Git GUI client (optional, if you prefer graphical Git operations)
- ✓ Text editor or IDE for JSON/XML configuration files (VS Code recommended)

### Skills & Knowledge (Recommended prerequisites)
- ✓ Basic understanding of AL programming language
- ✓ Familiarity with REST/SOAP/OData concepts (for Module 8)
- ✓ Understanding of DevOps and CI/CD principles (for Module 11)
- ✓ Basic experience with Power Platform (for Module 12)
- ✓ SQL and database concepts (helpful for understanding Business Central data model)

### Environment Configuration

This workshop uses the following example environment:
- **Server name**: `win22-bc28`
- **Web URL**: `https://win22-bc28:443/BC280/`
- **Default ports**: API (7048), SOAP (7149), Management (7045), Debug (7049)

**Multiple Instances**: Module 1 creates additional server instances (`BC280-Entra`, `BC280-NAVUP`). Each instance runs on the same server but uses different authentication methods and configurations.

**Cloud Configuration**: Modules 1, 3, and 12 require cloud tenant URLs:
- **Entra**: https://entra.microsoft.com (or your tenant URL)
- **Microsoft 365**: https://admin.microsoft.com (or your M365 tenant)
- **Power Platform**: https://[org].crm.dynamics.com (or your Power Apps environment URL)

Replace all example values with those appropriate for your environment. For module-specific configuration details, refer to the Prerequisites section above.

**Note**: Not all prerequisites are required for every module. Refer to the specific module description for required vs. optional prerequisites.

## Configuration and secrets

### Overview: Security First for GitHub Publishing

This workshop requires configuration files and credentials across 12 modules. When publishing to GitHub, sensitive data must be properly managed to prevent accidental exposure of secrets. This section guides you through secure configuration practices for all modules.

⚠️ **CRITICAL**: Never commit secrets, credentials, API keys, or certificates to GitHub. They should be populated locally and excluded via `.gitignore`.

### Configuration Files by Module

#### Category A: Cloud Integration (Modules 1, 3, 12)
Configure Entra, Microsoft 365, and Power Platform access:

**Existing Templates**:
- `templates/app-registration-values.example.json` — Entra app registration (Modules 1, 3, 12)
  - Populate with: Tenant ID, Client ID, Client Secret
  - Used for: OAuth2.0 authentication, Entra ID setup
  - ⚠️ Do NOT commit client secret values
  
- `templates/smtp-oauth-values.example.json` — Email configuration (Module 3)
  - Populate with: SMTP server, mailbox credentials
  - Used for: Exchange Online email setup
  - ⚠️ Do NOT commit SMTP passwords

**Setup Instructions**:
1. Copy `templates/app-registration-values.example.json` to `app-registration-values.json`
2. Populate with your Entra tenant information (see Module 1)
3. For Module 3, also copy and populate `smtp-oauth-values.example.json`
4. Keep populated files in `.gitignore` (see below)

#### Category B: Development Configuration (Modules 4-10)
AL project settings and debugging configuration:

**Recommended Templates** (create as needed):
- `templates/al-project-config.example.json` — AL project settings
  - Include: AL project path, server instance name, debug port
  - Used by: Modules 4-10 (Tables, Pages, Reports, AL Programming)
  - No secrets: Safe to commit after removing paths
  
- `local.settings.json` (AL project folder)
  - Include: Development database connection
  - ⚠️ Do NOT commit connection strings with credentials
  - Add to `.gitignore`

**Setup Instructions**:
1. Create `local.settings.json` in your AL project directory
2. Configure debug settings (port 7049, server instance name)
3. Use local development database
4. Add to `.gitignore`

#### Category C: DevOps & CI/CD Configuration (Module 11)
GitHub Actions and Azure DevOps integration:

**GitHub Secrets** (Required for Module 11):
- Go to repository **Settings > Secrets and variables > Actions**
- Create secrets for CI/CD workflows:
  - `AZURE_DEVOPS_PAT` — Azure DevOps Personal Access Token
  - `BUILD_AGENT_PAT` — Build agent credentials (if using self-hosted)
  - `DEPLOYMENT_USER` — Deployment credentials (if needed)
  
- Reference in workflows: `${{ secrets.AZURE_DEVOPS_PAT }}`
- Never hardcode tokens in YAML files

**Recommended Templates** (create as needed):
- `templates/devops-config.example.json` — DevOps configuration
  - Include: Azure DevOps org URL, project name, repo URL
  - Include: Build agent details (if self-hosted)
  - No secrets: URLs only, safe to commit
  - ⚠️ Do NOT commit PAT tokens or credentials

**Setup Instructions**:
1. Create Azure DevOps organization and project (Module 11-1)
2. Generate Personal Access Token (PAT) for CI/CD
3. Add PAT to GitHub Secrets (Settings > Actions)
4. In workflows, reference as `${{ secrets.AZURE_DEVOPS_PAT }}`
5. Do NOT commit PAT or credentials to repository

#### Category D: Power Platform Configuration (Module 12)
Power Apps and Dataverse credential management:

**Recommended Templates** (create as needed):
- `templates/power-platform-config.example.json` — Power Platform settings
  - Include: Power Apps environment URL, Dataverse org URL
  - Include: Data gateway machine name (if using on-premises gateway)
  - No secrets: URLs only, safe to commit
  - ⚠️ Do NOT commit Power Apps credentials

**Power Apps Credentials**:
- Store in Power Platform environment (do NOT commit to repository)
- Use Power Apps Connectors for credential management
- For API authentication, use Azure Key Vault (not repository)
- For Data Gateway, use Gateway's credential storage

**Setup Instructions**:
1. Provision Power Platform environment (Module 12-2)
2. Create Dataverse tables if needed (Module 12-4)
3. Configure Data Gateway locally (Module 12-1)
4. Store all credentials in Power Platform, not in code
5. Reference environment URLs in configuration (not credentials)

### Sensitive Data Checklist: Never Commit These

⚠️ **Do NOT commit any of the following to GitHub**:

- [ ] Entra app client secret / password
- [ ] SMTP password or credentials
- [ ] API keys or access tokens
- [ ] Connection strings with credentials
- [ ] Database passwords
- [ ] Certificate private keys (.pfx, .pem, .key files)
- [ ] OAuth refresh tokens
- [ ] Azure DevOps Personal Access Tokens (PAT)
- [ ] Power Apps credentials or connection strings
- [ ] Hardcoded usernames with passwords

**If accidentally committed**:
1. Revoke or rotate exposed credentials immediately; assume they are compromised regardless of repository visibility.
2. Remove sensitive content from Git history with an approved history-rewrite procedure. A deletion commit or `git rm --cached` alone is not sufficient.
3. Coordinate any required force-push, notify collaborators, and review audit logs, cached copies, and forks.

### GitHub Security Best Practices

#### 1. GitHub Secrets Management
For CI/CD workflows and automation:

**Repository Secrets** (Settings > Secrets and variables > Actions):
- Specific to one repository
- Use for: PAT tokens, API keys, credentials needed by one repo
- Example: `AZURE_DEVOPS_PAT`, `DEPLOYMENT_USER`

**Organization Secrets** (Organization Settings > Secrets):
- Shared across multiple repositories in organization
- Use for: Shared credentials, common tokens (if multi-repo needed)
- More secure for large teams

**How to Use in Workflows**:
```yaml
- name: Run Script
  run: ./script.sh
  env:
    DEVOPS_PAT: ${{ secrets.AZURE_DEVOPS_PAT }}
```

#### 2. Secret Scanning
Enable GitHub's secret scanning:
- Go to **Settings > Security > Secret scanning**
- Enable: "Push protection" (blocks commits with detected secrets)
- Enable: "Secret scanning" (detects secrets after push)
- Automatically alerts if secrets detected in code

#### 3. Branch Protection Rules
Prevent accidental secret commits:
- Go to **Settings > Branches > Add rule**
- Protect `main` and `develop` branches
- Require: Pull request reviews before merge
- Require: Status checks to pass (CI/CD workflows)
- Dismiss stale reviews when new commits pushed
- Include administrators in restrictions

#### 4. Code Review Before Secrets Exposure
- Always use pull requests (never direct pushes to protected branches)
- Require code reviews from team members
- Reviewers check for hardcoded credentials
- CI/CD runs checks before merge approval

### Template Files & Module Mapping

**Existing Templates** (in `templates/` directory):
| Template | Purpose | Module(s) | Status |
|----------|---------|-----------|--------|
| app-registration-values.example.json | Entra app registration | 1, 3, 12 | ✅ Exists |
| smtp-oauth-values.example.json | Email/SMTP config | 3 | ✅ Exists |

**Recommended New Templates** (create as needed for your setup):
| Template | Purpose | Module(s) | Recommended |
|----------|---------|-----------|------------|
| al-project-config.example.json | AL project settings | 4-10 | ⭐ Recommended |
| devops-config.example.json | Azure DevOps/CI-CD | 11 | ⭐ Recommended |
| power-platform-config.example.json | Power Platform URLs | 12 | ⭐ Recommended |

**Template Usage Instructions**:
1. Copy `.example.json` file to remove `.example` suffix
2. Populate with your environment values
3. Never commit populated files (add to `.gitignore`)
4. Add `.example` versions to repository for reference
5. Document expected values in template comments

### Pre-Commit Security Verification

Before committing code to GitHub, verify:

**Step 1: Check git status**
```powershell
git status
```
Verify no config files appear in staged changes:
- ❌ Should NOT see: `app-registration-values.json`, `smtp-oauth-values.json`, `al-project-config.json`
- ✅ Should see: Only `.example.json` files and code

**Step 2: Verify .gitignore coverage**
Ensure sensitive files are excluded:
```powershell
# Check what would be committed
git diff --cached --name-only

# Should NOT show any populated config files
```

**Step 3: Search for hardcoded credentials**
```powershell
# Search for common patterns in staged files
git diff --cached | Select-String -Pattern 'password|secret|token|api_key' -CaseSensitive
```

**Step 4: Review .gitignore**
Ensure these patterns are included:
```
# Configuration files with secrets
*-values.json
local.settings.json
*.local.json
secrets/
.env
.env.local

# Certificates and keys
*.pfx
*.pem
*.key
*.p12
```

**Step 5: Enable pre-commit hook (Optional)**
Create `.git/hooks/pre-commit` to auto-check before commits:
- Prevents commits if secrets patterns detected
- Fails if large files added (credentials often in large blobs)
- Requires manual override to commit anyway

### Environment-Specific Configuration

Different environments may need different settings:

**Development (Local Machine)**:
- Use local database or dev tenant
- Store credentials in `local.settings.json` (gitignored)
- Debug with local ports

**Testing Environment** (Optional):
- Use test Azure subscription/tenant
- Store in GitHub Secrets prefixed: `TEST_*`
- Separate configuration file

**Production Environment**:
- Use production Azure subscription/tenant
- Store in GitHub Organization Secrets (more restricted)
- Use separate GitHub Environment for approval workflows
- Require additional reviews before prod deployment

**Example Production Environment Setup**:
```
Settings > Environments > Production
  - Required reviewers (team lead approval)
  - Deployment branches (only main)
  - Secrets (PROD_AZURE_DEVOPS_PAT, etc.)
```

---

**Summary**: Copy template files, populate locally, add to `.gitignore`, use GitHub Secrets for CI/CD. The included `.gitignore` excludes common sensitive files and template-based configuration files. Always verify before committing.

## Repository layout

- `docs\` — lab instructions and troubleshooting.
- `scripts\` — optional parameterized PowerShell helpers.
- `templates\` — safe example configuration files.
- `assets\images\` — curated, sanitized screenshots that support selected UI steps.
- `local-only\` — Git-ignored raw screenshots, exports, and unredacted notes; never commit these files.

The original screenshot extraction remains local and ignored. Published images are limited to redacted or tenant-neutral views and never replace the written instructions.

For sanitized screenshots, tenant-specific identifiers and secret-related fields are masked and replaced with placeholders such as `XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`.

## Publishing and redaction

Follow the [sensitive-data and redaction policy](docs/sensitive-data-and-redaction.md) before publishing documentation, configuration, or screenshots. A Gitleaks workflow scans text changes, but it cannot replace a visual screenshot review or the repository's GitHub secret-scanning and push-protection settings.
