[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$ServerInstance,

    [Parameter(Mandatory)]
    [uri]$PublicWebBaseUrl
)

Set-NAVServerConfiguration `
    -ServerInstance $ServerInstance `
    -KeyName 'PublicWebBaseUrl' `
    -KeyValue $PublicWebBaseUrl.AbsoluteUri

Restart-NAVServerInstance -ServerInstance $ServerInstance
Get-NAVServerConfiguration -ServerInstance $ServerInstance -KeyName 'PublicWebBaseUrl'

