# Lab 6: Configure shared-mailbox email logging

## Goal

Enable modern Business Central email logging by routing mail copies to an Exchange Online shared mailbox.

## 1. Create the shared mailbox

In Exchange admin center:

1. Open **Recipients > Mailboxes**.
2. Select **Add a shared mailbox**.
3. Create a mailbox such as `BC Email Logging` with an address such as `emaillogging@<your-domain>`.

Use a dedicated mailbox for logging. Do not reuse an existing user mailbox.

## 2. Grant access to the logging account

On the shared mailbox:

1. Open **Delegation**.
2. Add the account used by Business Central email logging under **Read and manage (Full Access)**.

Use a dedicated service-style account where possible.

## 3. Create BCC transport rules

In Exchange admin center under **Mail flow > Rules**, create inbound and outbound rules that BCC messages to the shared mailbox address.

- **Inbound rule:** sender outside organization, recipient inside organization.
- **Outbound rule:** sender inside organization, recipient outside organization.
- **Action:** BCC to the shared mailbox logging address.

Enable both rules and verify they are active.

## 4. Configure Entra permissions for logging

On the Business Central integration app registration, add delegated permission:

- `Mail.ReadWrite.Shared`

Grant admin consent as required by tenant policy.

## 5. Configure Business Central email logging

In Business Central:

1. Open **Assisted Setup** as Business Manager.
2. Run **Set up email logging**.
3. Enter client ID, client secret, and redirect URI that match your Entra app registration.
4. Sign in with the logging account and complete consent.

After setup, verify the email logging job queue entries are created.

## Validate

1. Send a test email that matches your mail flow rule conditions.
2. Confirm a BCC copy reaches the shared mailbox.
3. Confirm the interaction appears in Business Central email logging.

