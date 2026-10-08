# Sensitive Data and Redaction Policy

Use this policy before adding, committing, or publishing workshop material. It applies to documentation, scripts, templates, screenshots, filenames, and Git history. Contributors are responsible for reviewing their changes; automated scans are an additional safeguard, not approval to publish.

## 1. Information that must not be published

Replace real values with safe placeholders before adding content to the repository.

| Category | Examples |
| --- | --- |
| Secrets and credentials | Passwords, client secrets, API keys, access or refresh tokens, connection strings, SAS URLs, certificates, private keys |
| Tenant and organization identifiers | Tenant, subscription, app, object, and environment IDs; organization-specific resource names and URLs |
| Personal and customer data | Names, email addresses, phone numbers, addresses, employee IDs, user principal names, customer records, company or project names |
| Infrastructure details | Public IPs, internal hostnames, FQDNs, server names, tenant-specific service URLs |

Use consistent, obviously fake placeholders:

| Value | Example placeholder |
| --- | --- |
| GUID | `XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX` |
| Secret, key, or token | `<YOUR-CLIENT-SECRET>` |
| Email | `user@contoso.example` |
| Tenant domain | `contoso.onmicrosoft.com` |
| Business Central environment URL | `<your-environment>.crm.dynamics.com` |
| IP address | `203.0.113.10` |
| Hostname | `<server-name>` |

Never partially mask a secret. A prefix or suffix can still disclose information and help guess the rest.

## 2. Prepare and review screenshots

1. Prefer a demo or throwaway tenant. Close unrelated tabs, bookmarks, notifications, and account menus before capture.
2. Crop the image to only the UI needed to explain the step.
3. Cover every sensitive field with an opaque, solid-color box. Do not use blur, pixelation, or translucent overlays.
4. Flatten and re-export the image so hidden layers and original pixels cannot be recovered. Strip EXIF and other metadata.
5. Inspect the URL bar, browser tabs, breadcrumbs, account and tenant menus, notifications, taskbar, developer tools, errors, data rows, and filenames.
6. Review the final image at 200% zoom. OCR and secret scanners do not establish that an image is safe; arrange a second review for public releases.
7. Give the image a neutral filename, such as `step-03-create-connection.png`.

Keep raw captures and unredacted notes under the ignored `local-only/` directory. Never commit raw originals as backups.

## 3. Repository safeguards

### Local files and credentials

- The `.gitignore` excludes common local configuration, credentials, private keys, and `local-only/`. Ignore rules do not remove files that are already tracked; inspect staged files before committing.
- Keep real configuration in an approved secret store or environment variables, never in the repository.

### Automated scanning

- The GitHub Actions Gitleaks workflow runs on pushes and pull requests to scan for known secret patterns. A passing scan does not prove content is safe and cannot replace review of personal details, tenant-specific identifiers, or screenshots.
- Review staged text for common identifiers before committing:

  ```powershell
  git diff --cached --unified=0 | Select-String -Pattern '(?i)\b[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\b|\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b|\b(?:\d{1,3}\.){3}\d{1,3}\b|\b[A-Za-z0-9-]+\.(?:onmicrosoft\.com|crm\d+\.dynamics\.com|azurewebsites\.net)\b'
  ```

  Treat matches as prompts for review: demo values and documentation-range IP addresses can be safe, but verify each match. Add local checks for organization-specific names or phone patterns as needed. Do not commit real personal identifiers in scanner configuration.

### GitHub repository controls

- Repository owners should enable GitHub secret scanning and push protection in repository security settings.
- Require the `Gitleaks` status check on protected branches. The workflow scans pushes and pull requests; it does not block direct pushes by itself.

## 4. Pre-publish checklist

Do not publish until each item is reviewed:

- [ ] No real secrets, tokens, connection strings, tenant IDs, personal data, or organization-specific values appear in text, scripts, templates, or filenames.
- [ ] Screenshots are cropped as needed, solid-masked, flattened, stripped of metadata, and manually reviewed.
- [ ] The Gitleaks workflow passes, and a scoped identifier review is complete.
- [ ] Staged files contain only intended content. A clean working-tree scan does not inspect prior Git history.
- [ ] Git history has been reviewed; deleted secrets remain in history.

## 5. If sensitive data is exposed

Treat any exposed credential as compromised:

1. Revoke or rotate it immediately.
2. Notify repository owners and review audit logs for credential use.
3. Remove the exposed content from Git history using an approved history-rewrite procedure. Deleting the file in a later commit is not sufficient.
4. Coordinate any force-push with collaborators, then assess cached copies and forks.
