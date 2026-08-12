# Lab 5: Configure SMTP OAuth for background email

## Goal

Configure SMTP OAuth for Business Central background processes, such as workflow notifications, that must send as a specific mailbox without an interactive user session.

## 1. Add the Exchange Online application permission

In the Entra application registration:

1. Go to **API permissions > Add a permission > APIs my organization uses**.
2. Select **Office 365 Exchange Online**.
3. Select **Application permissions**, expand **SMTP**, and add `SMTP.SendAsApp`.
4. Grant admin consent.

Record the application ID and the **Object ID of the enterprise application** (service principal), not the app registration object ID.

## 2. Configure Exchange Online

Install the module if necessary:

```powershell
Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser
```

Run the helper from PowerShell 7:

```powershell
.\scripts\lab-05-configure-exchange-online.ps1 `
  -ApplicationId '00000000-0000-0000-0000-000000000000' `
  -EnterpriseApplicationObjectId '00000000-0000-0000-0000-000000000000' `
  -Mailbox 'sender@contoso.com'
```

The helper enables SMTP AUTH organization-wide, creates the Exchange Online service principal, and grants the service principal `SendAs` and `FullAccess` permissions for the mailbox. Review this scope before executing in a shared or production tenant.

Confirm SMTP client authentication is not disabled for the mailbox:

```powershell
Get-CASMailbox -Identity 'sender@contoso.com' |
  Select-Object SmtpClientAuthenticationDisabled
```

## 3. Configure Business Central

1. Open **Set Up Email** and choose **SMTP**.
2. Specify an account name, select **Specific User**, and enter the sender email address.
3. Select **Apply Office 365 Server Setting** to populate the server and port.
4. Select **OAuth 2.0** authentication and enable custom app registration.
5. Enter the application registration details, authenticate, and grant consent.
6. Finish setup and set the account as default if it is used for background processes.

Edit the account afterward to review the stored settings and send a test message.

