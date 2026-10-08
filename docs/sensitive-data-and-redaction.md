# Sensitive-data and redaction policy

Use this policy before committing or publishing workshop material. It applies to documentation, scripts, templates, screenshots, filenames, and Git history.

## Never publish

- Secrets: passwords, client secrets, API keys, access or refresh tokens, connection strings, SAS URLs, certificates, and private keys.
- Identifiers tied to a real tenant or organization: tenant, subscription, app, object, and environment IDs; organization-specific resource names and URLs.
- Personal or customer data: names, email addresses, phone numbers, addresses, employee IDs, user principal names, customer records, and company or project names.
- Infrastructure details: public IPs, internal hostnames, FQDNs, server names, and tenant-specific service URLs.

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

## Screenshots

1. Prefer a demo or throwaway tenant. Close unrelated tabs, bookmarks, notifications, and account menus before capture.
2. Crop to the UI needed to explain the step.
3. Cover every sensitive field with an opaque, solid-color box. Do not use blur, pixelation, or translucent overlays.
4. Flatten and re-export the image so hidden layers and original pixels cannot be recovered. Strip EXIF and other metadata.
5. Check the URL bar, browser tabs, breadcrumbs, account and tenant menus, notifications, taskbar, developer tools, errors, data rows, and filenames.
6. Review at 200% zoom. OCR and secret scanners do not establish that an image is safe; use a second reviewer for public releases.
7. Use neutral filenames, for example `step-03-create-connection.png`.

Keep raw captures and unredacted notes under the ignored `local-only/` directory. Never commit raw originals as backups.

## Repository safeguards

- `.gitignore` excludes common local configuration, credentials, private keys, and `local-only/`. Ignore rules do not remove a file that is already tracked; review staged files before committing.
- The GitHub Actions Gitleaks workflow scans text changes for known secret patterns. It cannot identify all personal, tenant-specific, or image content.
- Review staged text for common identifiers before committing:

  ```powershell
  git diff --cached --unified=0 | Select-String -Pattern '(?i)\b[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\b|\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b|\b(?:\d{1,3}\.){3}\d{1,3}\b|\b[A-Za-z0-9-]+\.(?:onmicrosoft\.com|crm\d+\.dynamics\.com|azurewebsites\.net)\b'
  ```

  Treat matches as review prompts: demo values and documentation-range IPs can be safe, but verify each one. Add local checks for organization-specific names or phone patterns as needed; do not put real personal identifiers into scanner configuration committed to this repository.
- Repository owners should enable GitHub secret scanning and push protection in repository security settings. Keep real configuration in a secret store or environment variables, never in the repository.
- Require the `Gitleaks` status check on protected branches. The workflow detects pushed changes; it does not block direct pushes by itself.

## Pre-publish checklist

- No real secrets, tokens, connection strings, tenant IDs, personal data, or organization-specific values in text, scripts, templates, or filenames.
- All screenshots are cropped as needed, solid-masked, flattened, metadata-stripped, and manually reviewed.
- The Gitleaks workflow passes and a scoped identifier review is complete.
- Staged files contain only intended content. A clean working tree scan does not inspect prior Git history.
- Review Git history before publishing. Deleted secrets remain in history.

## If sensitive data is exposed

Treat an exposed credential as compromised and rotate or revoke it immediately. Removing a file in a later commit is not enough: remove exposed content from Git history using an approved history-rewrite procedure, coordinate any force-push, and review audit logs for credential use. Notify repository owners and assess cached copies and forks.
