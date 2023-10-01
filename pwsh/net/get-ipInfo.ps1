<#
.SYNOPSIS retrive the Local machine Internal IP Address for the active connection.
#>

$intIndex = Read-Host -Prompt "please enter your active NIC interface Index if you know it"

$ipinfo = Get-NetIPConfiguration -InterfaceIndex $intIndex

"IPAdress: " + $ipinfo.IPv4Address
"`n"

"Default Gateway: " + ($ipinfo.IPv4DefaultGateway).NextHop
"`n"

"DNS Servers: " + ($ipinfo.DNSServer).ServerAddresses | fl