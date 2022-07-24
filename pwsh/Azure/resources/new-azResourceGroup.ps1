<#
.SYNOPSIS
Create a new resource group

#>
$rgName = Read-Host -Prompt "Please enter a name for the resource group you wish to create."
$rgLocation = Read-Host -Prompt "Please enter the region you want the resource group created in."
New-AzResourceGroup `
-Name $rgName `
-Location $rgLocation 


