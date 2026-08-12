[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [guid]$ApplicationId,

    [Parameter(Mandatory)]
    [guid]$EnterpriseApplicationObjectId,

    [Parameter(Mandatory)]
    [string]$Mailbox,

    [string]$DisplayName = 'BC SMTP OAuth'
)

Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -Device

Set-TransportConfig -SmtpClientAuthenticationDisabled $false

New-ServicePrincipal `
    -AppId $ApplicationId `
    -ServiceId $EnterpriseApplicationObjectId `
    -DisplayName $DisplayName

Add-RecipientPermission `
    -Identity $Mailbox `
    -Trustee $EnterpriseApplicationObjectId `
    -AccessRights SendAs `
    -Confirm:$false

Add-MailboxPermission `
    -Identity $Mailbox `
    -User $EnterpriseApplicationObjectId `
    -AccessRights FullAccess `
    -AutoMapping:$false

