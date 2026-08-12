# Lab 3: Configure a Microsoft 365 mailbox

## Goal

Configure a Microsoft 365 email account in Business Central using the registration created in Lab 2.

## Steps

1. In Business Central, open **Email Microsoft Entra Application Registration**.
2. Enter the client ID and client secret from Lab 2.
3. Before selecting **Verify Registration**, confirm the Entra registration contains this redirect URI:

   ```text
   https://win22-bc28:443/BC280/OAuthLanding.htm
   ```

4. Select **Verify Registration** and sign in with the mailbox account authorized to send mail.
5. Open **Set Up Email** and select **Microsoft 365**.
6. Enter the email address and account name, then finish setup.
7. Send a test email.

If the verification fails with a redirect error, compare the configured `PublicWebBaseUrl`, IIS binding hostname and port, and Entra redirect URI character-for-character.

