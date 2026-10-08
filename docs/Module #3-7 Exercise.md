# Module #3-7: Exercise

> Part of: Module 3: Email & Communication Setup

## [**Exercise - Set up and send email**](https://learn.microsoft.com/en-us/training/modules/email-integration-dynamics-365-business-central/7-exercise)

Setup user to be able to send email from BC

![Screenshot 1](../assets/images/module-3-7-exercise-01.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 2](../assets/images/module-3-7-exercise-02.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 3](../assets/images/module-3-7-exercise-03.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Sent to `[your ID]@contoso.example` and received.

Done!

## **Own Exercise**

### Set Up Email “Public Folders” Logging In Exchange Online

Need to create shared mailbox
`https://admin.cloud.microsoft/exchange#`

Using the service account.
[Set up email logging - Business Central | Microsoft Learn](https://learn.microsoft.com/en-us/dynamics365/business-central/marketing-set-up-email-logging?wt.mc_id=d365bc_inproduct_page)

**Property**
**Value**
Name
Public Folders Management
Selected roles
Public Folders
Selected users
The email of the user account that Business Central will use to run the email logging job

**1. Create a new role group**
In Exchange admin center → Roles → Admin roles, click Add role group (not search for an existing one). Name it exactly **"Public Folders Management"** (note: Folders, plural).
**2. Assign the "Public Folders" role**
In the role selection step, add the single role called **"Public Folders"** (not "Public Folder Replication" or anything else — just that one).
**3. Add the email-logging account as a member**
Add the specific account that Business Central's scheduled job will use to connect to Exchange and process emails — this should be a dedicated, non-personal account per Microsoft's guidance, not your personal admin login.

![Screenshot 4](../assets/images/module-3-7-exercise-04.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Assigned to : `<service-account>`
Permission: “Public Folder”

**4. Create the public folder mailbox named "Public MailBox"**
With that role group in place, go create the public folder mailbox: Recipients → Public folders → Public folder mailboxes → add one named "Public MailBox". This is the container that will host the actual folder structure.
**5. Create the Email Logging folder structure**
Under Public folders, create a root folder named "Email Logging", then two sub-folders under it: \Email Logging\Queue\ and \Email Logging\Storage\.

The “Public Folder” menu link on the left bottom area.

![Screenshot 5](../assets/images/module-3-7-exercise-05.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Create root folder

![Screenshot 6](../assets/images/module-3-7-exercise-06.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 7](../assets/images/module-3-7-exercise-07.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Click folder icon on the right side of “Email Logging” before adding the sub folder

![Screenshot 8](../assets/images/module-3-7-exercise-08.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 9](../assets/images/module-3-7-exercise-09.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 10](../assets/images/module-3-7-exercise-10.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

**6. Set folder ownership and mail-enable Queue**
On both the Queue and Storage folders, set the email-logging account (the same one from step 3) as Owner — not just a member/reader. Then mail-enable the Queue folder specifically so it can receive the BCC'd copies from your mail flow rules.

Email Logging Set Permission.

![Screenshot 11](../assets/images/module-3-7-exercise-11.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Mail-Enable for Queue

![Screenshot 12](../assets/images/module-3-7-exercise-12.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Queue@[your ID].onmicrosoft.com

Mail-enable sending emails to the Queue public folder
Use PowerShell CLI online
Note: it does not work with UPN following script

`Connect-ExchangeOnline -UserPrincipalName <service-account>@[your ID].onmicrosoft.com `

Login first
`connect-exchangeonline ``-Device``  `
`To sign in, use a web browser to open the page https://login.microsoft.com/device and enter the code <DEVICE-CODE> to authenticate.`

`Get-ConnectionInformation`

`ConnectionId                    : XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`
`State                           : Connected`
`Id                              : 1`
`Name                            : ExchangeOnline_1`
`UserPrincipalName               : <service-account>@[your ID].onmicrosoft.com`
`ConnectionUri                   : https://outlook.office365.com`
`AzureAdAuthorizationEndpointUri : https://login.microsoftonline.com/organizations`
`TokenExpiryTimeUTC              : 8/8/2026 5:40:43 AM +00:00`
`CertificateAuthentication       : False`
`ModuleName                      : /tmp/tmpEXO_44ttulc5.g5e`
`ModulePrefix                    : `
`Organization                    : `
`DelegatedOrganization           : `
`AppId                           : `
`PageSize                        : 0`
`TenantID                        : XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`
`TokenStatus                     : Active`
`ConnectionUsedForInbuiltCmdlets : True`
`IsEopSession                    : False`

`Get-Command Add-PublicFolderClientPermission`

`CommandType     Name                                               Version    Source`
`-----------     ----                                               -------    ------`
`Function        Add-PublicFolderClientPermission                   0.0.1      tmpEXO_44ttulc5.g5e`

`Add-PublicFolderClientPermission -Identity "\Email Logging\Queue" -User Anonymous -AccessRights CreateItems`

`FolderName           User              AccessRights           SharingPermissionFlags`
`----------           ----              ------------           ----------------------`
`Queue                Anonymous         {CreateItems}          `

`Set-MailPublicFolder -Identity "\Email Logging\Queue" -RequireSenderAuthenticationEnabled $false`

`Get-PublicFolderClientPermission "\Email Logging\Queue"`

`FolderName           User                 AccessRights                SharingPermissionFlags`
`----------           ----                 ------------                ----------------------`
`Queue                Default              {Author}                                                        `
`Queue                Anonymous            {CreateItems}   `

**Create the two mail flow (BCC) rules**

`Queue@[your ID].onmicrosoft.com`

Inbound
Outbound

![Screenshot 13](../assets/images/module-3-7-exercise-13.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 14](../assets/images/module-3-7-exercise-14.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Rule setting are similar for both inbound/outbound

![Screenshot 15](../assets/images/module-3-7-exercise-15.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Test the public queue folder.
- Send test email from `[your ID]@contoso.example` to `<service-account>@[your ID].onmicrosoft.com`.
- Add the public folder from Outlook while signed in to the service account.

![Screenshot 16](../assets/images/module-3-7-exercise-16.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 17](../assets/images/module-3-7-exercise-17.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Click the start

The public queue mailbox is added

![Screenshot 18](../assets/images/module-3-7-exercise-18.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Note: The BC Setup is not matched with local BC-on prem

I disabled the rule

![Screenshot 19](../assets/images/module-3-7-exercise-19.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

### Set Up Shared Mailbox for BC on-prem On Exchange Online

Need to create shared mailbox
`https://admin.cloud.microsoft/exchange#`

Using the service account.
[Set up email logging - Business Central | Microsoft Learn](https://learn.microsoft.com/en-us/dynamics365/business-central/marketing-set-up-email-logging?wt.mc_id=d365bc_inproduct_page)

**Create the shared mailbox**
Exchange admin center → Recipients → Mailboxes → Add a shared mailbox. Give it a display name (e.g. "BC Email Logging") and an address like `emaillogging@[your ID].onmicrosoft.com`. This is a completely separate mailbox from the Queue public folder — don't reuse that address.

![Screenshot 20](../assets/images/module-3-7-exercise-20.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

`emaillogging@[your ID].onmicrosoft.com`

**Add the email-logging account as a member of the shared mailbox**
The account that you use for email logging is an Exchange Online account. The scheduled job uses the account to connect to the shared mailbox and process emails. This account shouldn't be associated with a specific person. Use a dedicated non-personal service account for this purpose. Open the shared mailbox → Delegation tab → add that account under "Read and manage (Full Access)."

![Screenshot 21](../assets/images/module-3-7-exercise-21.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Add the service account.

**Optional: grant Read access to the Archive folder for other viewers**
<cite index="58-1">You can allow another user to open an email message in Exchange related to an interaction log entry from Business Central by giving the user Read permission to the Archive folder in the shared mailbox.</cite> This is optional — skip it if no other user needs visibility.

**Create the two mail flow rules, BCC'ing the shared mailbox**
In Exchange admin center → Mail flow → Rules, create two rules named exactly the same as your public folder rules ("**Log Email Sent to This Organization" / "Log Email Sent from This Organization**") — or rename to distinguish them since you'll now have duplicates. <cite index="58-1">The inbound rule triggers when the sender is located outside the organization and the recipient is located inside; the outbound rule is the reverse. Both use "BCC the message to" pointing at the shared mailbox's address instead of the Queue folder's address.</cite>

Inbound
Outbound

![Screenshot 22](../assets/images/module-3-7-exercise-22.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 23](../assets/images/module-3-7-exercise-23.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Enabled Both Rules

Test sent email from Outlook using `[your ID]@contoso.example` to the service account.

In outlook client cloud, add shared mailbox

![Screenshot 24](../assets/images/module-3-7-exercise-24.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 25](../assets/images/module-3-7-exercise-25.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

In Application Registration
Add permission  “Mail.ReadWrite.Shared” and grant admin consent

![Screenshot 26](../assets/images/module-3-7-exercise-26.png)
<!-- Auto-blurred via OCR redaction pipeline (2 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

### Setup Email Logging on BC on-prem

Use Business Manager Role Center

![Screenshot 27](../assets/images/module-3-7-exercise-27.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Enable Manual Setup Done

![Screenshot 28](../assets/images/module-3-7-exercise-28.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 29](../assets/images/module-3-7-exercise-29.png)
<!-- Auto-blurred via OCR redaction pipeline (4 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Use the service account.

![Screenshot 30](../assets/images/module-3-7-exercise-30.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 31](../assets/images/module-3-7-exercise-31.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

It prompt to logged in as dev1

![Screenshot 32](../assets/images/module-3-7-exercise-32.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 33](../assets/images/module-3-7-exercise-33.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

New Job queue is automatically Created

### Setup Own Outlook Integration

![Screenshot 34](../assets/images/module-3-7-exercise-34.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 35](../assets/images/module-3-7-exercise-35.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Slightly different from online BC

![Screenshot 36](../assets/images/module-3-7-exercise-36.png)
<!-- Auto-blurred via OCR redaction pipeline (2 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 37](../assets/images/module-3-7-exercise-37.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Extract the zip (2 xml files)

![Screenshot 38](../assets/images/module-3-7-exercise-38.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

**Microsoft 365** → mailboxes are in Exchange Online (your setup)
**Exchange Server** → mailboxes are on a local on-prem Exchange Server (e.g., Exchange 2016/2019)

![Screenshot 39](../assets/images/module-3-7-exercise-39.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Upload the 2 manifest XML from M 365 admin center

![Screenshot 40](../assets/images/module-3-7-exercise-40.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Contact Insight

![Screenshot 41](../assets/images/module-3-7-exercise-41.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 42](../assets/images/module-3-7-exercise-42.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 43](../assets/images/module-3-7-exercise-43.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 44](../assets/images/module-3-7-exercise-44.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 45](../assets/images/module-3-7-exercise-45.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Document View

![Screenshot 46](../assets/images/module-3-7-exercise-46.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Similar steps config like the contact Insight

Show under integrated app

![Screenshot 47](../assets/images/module-3-7-exercise-47.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Run the outlook in the hyper-v guess  BC-Onprem
The BC link menu appear, however but it can not access the BC
Because the default instance runs on windows local authentication

![Screenshot 48](../assets/images/module-3-7-exercise-48.png)
<!-- Auto-blurred via OCR redaction pipeline (4 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

### SMTP Email Account with Oauth2.0 Custom:

#### Required API Permission

**API:** Office 365 Exchange Online
 **Permission Type:** Application Permission
 **Permission:** SMTP.SendAsApp ✅
Microsoft's guidance explicitly says to:
- Azure Portal → App Registrations → Your App
- API Permissions → Add Permission
- **APIs my organization uses**
- Select **Office 365 Exchange Online**
- **Application permissions**
- Expand **SMTP**
- Add **SMTP.SendAsApp**
- Grant **Admin Consent**[ [learn.microsoft.com]](https://learn.microsoft.com/en-us/dynamics365/business-central/admin-multi-tenant-smtp)

![Screenshot 49](../assets/images/module-3-7-exercise-49.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

App Registration ID		: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
Enterprise App Object ID	: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
Azure Portal → Enterprise Application
Entra Portal ([https://entra.microsoft.com/](https://entra.microsoft.com/)) → Enterprise Application

Using the Powershell 7.0

Install module ExchangeOnlineManagement
`Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser`

Connect authenticate with device
`Connect-ExchangeOnline -Device`

Check SMTP client is not disabled

`Get-CASMailbox -Identity <service-account> | Select-Object SmtpClientAuthenticationDisabled`
`SmtpClientAuthenticationDisabled`

Set to Enable SMTP Client
`Set-TransportConfig -SmtpClientAuthenticationDisabled $false`

Set New Service Principal
Service ID ⇒ Object ID of enterprise app Entra for BC OnPrem
`New-ServicePrincipal ``
`    -AppId "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" ``
`    -ServiceId "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" ``
`    -DisplayName "BC SMTP OAuth"`

Add Recipient Permission
Thruster ⇒ Object ID

`Add-RecipientPermission ``
`-Identity "<service-account>@[your ID].onmicrosoft.com" ``
`-Trustee "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" ``
`-AccessRights SendAs ``
`-Confirm:$false`

Add Mailbox Permission
User ⇒ Object ID
`Add-MailboxPermission ``
`-Identity "<service-account>@[your ID].onmicrosoft.com" ``
`-User "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" ``
`-AccessRights FullAccess ``
`-AutoMapping:$false`

![Screenshot 50](../assets/images/module-3-7-exercise-50.png)
<!-- Auto-blurred via OCR redaction pipeline (2 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

**Check Module #3-6 Own Exercise **
Setup email for current user to get client ID, Client Secret, tenant ID, and redirect URI
