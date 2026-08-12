[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$DnsName
)

$certificate = New-SelfSignedCertificate `
    -DnsName $DnsName `
    -CertStoreLocation 'Cert:\LocalMachine\My'

$certificate | Select-Object Subject, Thumbprint, NotBefore, NotAfter

