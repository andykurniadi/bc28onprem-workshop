# Business Central 28 On-Premises Email Workshop

This repository contains an end-to-end workshop for configuring Microsoft Dynamics 365 Business Central 28 on-premises email integration with Microsoft Entra ID, Microsoft 365, and Exchange Online.

The lab exercises emphasize collaborating with GitHub Copilot in Visual Studio. They provide opportunities to explore how AI can assist with straightforward and complex tasks from Microsoft Learn exercises, as well as custom exercises you create.

## Repository map

| Path | Purpose |
| --- | --- |
| [`docs/`](docs/) | Module exercise instructions and the sensitive-data publishing policy. |
| [`al-project/Labs/`](al-project/Labs/) | AL project lab examples. |
| [`other-project/Labs/`](other-project/Labs/) | Supplemental project lab materials. |
| [`scripts/`](scripts/) | Optional PowerShell helpers for workshop setup and configuration. |
| [`templates/`](templates/) | Placeholder-only example configuration files. |
| [`assets/images/`](assets/images/) | Screenshots used in exercise instructions. |


## Lab sequence

### Module 1: Getting Started with Business Central

[**Module #1-1: Exercise (bc-online)**](docs/Module%20%231-1%20Exercise%20%28bc-online%29.md)
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
[**Module #3-2: Exercise**](docs/Module%20%233-2%20Exercise.md)
- Exercise - Create a company with demo data

[**Module #3-3: Exercise**](docs/Module%20%233-3%20Exercise.md)
- Exercise - Create a new customer template

[**Module #3-5: Exercise (bc-online)**](docs/Module%20%233-5%20Exercise%20%28bc-online%29.md)
- Exercise - Add a new user

### Module 3: Email & Communication Setup

[**Module #3-6: Exercise (Own)**](docs/Module%20%233-6%20Exercise%20%28Own%29.md)
- Own Exercise
  - Set up email for Current user
  - Creating Document Sending Profile
  - Email Send Scenario
  - Send/Print confirmation
  - Sent Email

[**Module #3-7: Exercise**](docs/Module%20%233-7%20Exercise.md)
- Exercise - Set up and send email
- Own Exercise
  - Set Up Email "Public Folders" Logging In Exchange Online
  - Set Up Shared Mailbox for BC on-prem On Exchange Online
  - Setup Email Logging on BC on-prem
  - Setup Own Outlook Integration
  - SMTP Email Account with Oauth2.0 Custom:

### Module 4: Creating Business Objects - Tables & Pages

[**Module 4-2: Exercise**](docs/Module%204-2%20Exercise.md)
- Exercise - Create a table

[**Module #4-4: Exercise**](docs/Module%20%234-4%20Exercise.md)
- Exercise - Create a Card page
- Exercise - Create a List page

[**Module #4-8: Exercise**](docs/Module%20%234-8%20Exercise.md)
- Exercise - Create a table extension
- Exercise - Create a page extension
- Own Exercise
  - Attach Debug Test
  - Snapshot Debug Test, download and profiler

### Module 5: Reporting & Analytics

[**Module #5-4: Exercise**](docs/Module%20%235-4%20Exercise.md)
- Exercise - Create a basic report

[**Module #5-7: Exercise**](docs/Module%20%235-7%20Exercise.md)
- Exercise - Create a processing-only report

### Module 6: Programming in AL

[**Module #6-1: Exercise**](docs/Module%20%236-1%20Exercise.md)
- Exercise - Discover the intrinsic data types
- Exercise - Use logical and relational expressions

[**Module #6-2: Exercise**](docs/Module%20%236-2%20Exercise.md)
- Exercise - Use conditional and compound statements

[**Module #6-3: Exercise**](docs/Module%20%236-3%20Exercise.md)
- Exercise - Use built-in functions

[**Module #6-7: Exercise**](docs/Module%20%236-7%20Exercise.md)
- Exercise - Events and triggers

[**Module #6-8: Exercise**](docs/Module%20%236-8%20Exercise.md)
- Exercise - Create an interface

[**Module #6-9: Exercise**](docs/Module%20%236-9%20Exercise.md)
- Exercise - Use data manipulation statements
- Exercise - Custom functions

[**Module #6-10: Exercise**](docs/Module%20%236-10%20Exercise.md)
- Exercise - Multilanguage development

### Module 7: File Handling & XMLports

[**Module #7-1: Exercise**](docs/Module%20%237-1%20Exercise.md)
- Own Exercise:
  - Creating a New Skill:
  - Creating custom prompt:
- Exercise - Read and write files

[**Module #7-2: Exercise**](docs/Module%20%237-2%20Exercise.md)
- Exercise - Create an XMLport to export XML data

### Module 8: Integration & Web Services

[**Module #8-2: Exercise**](docs/Module%20%238-2%20Exercise.md)
- Own Exercise:
  - Create Customer_ws for ODATA, SOAP and API Service
  - Create C# Console Client Consume BC SOAP web service

[**Module #8-3: Exercise**](docs/Module%20%238-3%20Exercise.md)
- Exercise - Connect to external REST services
- Own Exercise:
  - Generate page to connect REST API from fresh Prompt

[**Module #8-4: Exercise**](docs/Module%20%238-4%20Exercise.md)
- Exercise - Build a control add-in object

### Module 9: User Interface & Role Centers

[**Module #9-2: Exercise**](docs/Module%20%239-2%20Exercise.md)
- Exercise - Create a Role Center page with an Activity page
- 6. Final Recommendation

[**Module #9-3: Exercise**](docs/Module%20%239-3%20Exercise.md)
- Exercise - Build a wizard page with Assisted Setup

[**Module #9-4: Exercise**](docs/Module%20%239-4%20Exercise.md)
- Exercise - Create a notification

### Module 10: Business Logic & Workflows

[**Module #10-3: Exercise**](docs/Module%20%2310-3%20Exercise.md)
- Exercise - Add tables and pages for master data

[**Module #10-4: Exercise**](docs/Module%20%2310-4%20Exercise.md)
- Exercise - Create example documents

### Module 11: DevOps & CI/CD

[**Module #11-1: Exercise**](docs/Module%20%2311-1%20Exercise.md)
- Exercise - Create an Azure DevOps organization and project

[**Module #11-2: Exercise**](docs/Module%20%2311-2%20Exercise.md)
- Exercise - Source control with Git

[**Module #11-3: Exercise**](docs/Module%20%2311-3%20Exercise.md)
- Exercise - Use branching and merging with Git

[**Module #11-4: Exercise**](docs/Module%20%2311-4%20Exercise.md)
- Exercise - Use Docker to test the latest Business Central version

[**Module #11-6: Exercise**](docs/Module%20%2311-6%20Exercise.md)
- Exercise - Use Azure Pipelines for CI/CD with Business Central

[**Module #11-7: Exercise**](docs/Module%20%2311-7%20Exercise.md)
- Exercise - Work with Azure Boards

### Module 12: Power Platform & Advanced Integration

[**Module #12-1: Exercise**](docs/Module%20%2312-1%20Exercise.md)
- Own Exercise:
  - Install and configure On-prem DataGateway

[**Module #12-2: Exercise**](docs/Module%20%2312-2%20Exercise.md)
- Exercise - Create the customer financial details app in Power Apps

[**Module #12-3: Exercise**](docs/Module%20%2312-3%20Exercise.md)
- Exercise - Create a flow for sending emails when a new item is created in Power Automate (Require Online)

[**Module #12-4: Exercise**](docs/Module%20%2312-4%20Exercise.md)
- Exercise - Create a table in Microsoft Dataverse
- Own Exercise - Connect to Dataverse

[**Module #12-5: Exercise**](docs/Module%20%2312-5%20Exercise.md)
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
