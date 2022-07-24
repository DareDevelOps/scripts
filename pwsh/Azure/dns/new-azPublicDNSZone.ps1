<#
.SYNOPSIS
Create a new Azure Public DNS zone
#>

$azPublicDNSZonename = Read-Host -Prompt "Please enter the DNS zone name."
$azRGName = Read-Host -Prompt "Please enter the resource group name for the DNS zone."


New-AzDnsZone `
-Name $azPublicDNSZonename `
-ResourceGroupName $azRGName