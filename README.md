# Business Central 28 On-Premises Email Workshop

This repository contains a five-lab workshop for configuring Microsoft Dynamics 365 Business Central 28 on-premises email integration with Microsoft Entra ID and Microsoft 365.

## Lab sequence

1. [Enable HTTPS](docs/lab-01-enable-https.md) for the Business Central web client.
2. [Create an Entra application registration](docs/lab-02-entra-app-registration.md).
3. [Configure a Microsoft 365 shared or specific mailbox](docs/lab-03-m365-mailbox.md).
4. [Configure a current-user Microsoft 365 account](docs/lab-04-current-user-email.md).
5. [Configure SMTP OAuth for background processes](docs/lab-05-smtp-oauth.md).

## Prerequisites

- A Windows Server 2022 Hyper-V guest with Business Central 28 on-premises installed.
- A Business Central Server instance, referred to in this workshop as `BC280`.
- Local administrator access to the guest and access to IIS Manager.
- A Microsoft Entra tenant with permission to create app registrations. Exchange Online administration is required for Lab 5.
- PowerShell 7 for the Exchange Online commands in Lab 5.

The examples use `win22-bc28` as the server name and `https://win22-bc28:443/BC280/` as the public URL. Replace these with values appropriate for your environment.

## Configuration and secrets

Copy the relevant file in `templates\` before use and populate it locally. Do not commit populated copies, client secrets, certificates, or tenant identifiers. The included `.gitignore` excludes common sensitive files.

## Repository layout

- `docs\` — lab instructions and troubleshooting.
- `scripts\` — optional parameterized PowerShell helpers.
- `templates\` — safe example configuration files.
- `assets\images\` — curated, sanitized screenshots that support selected UI steps.

The original screenshot extraction remains local and ignored. Published images are limited to redacted or tenant-neutral views and never replace the written instructions.
