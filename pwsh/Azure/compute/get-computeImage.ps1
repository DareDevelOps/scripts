<#
.SYNOPSIS
Get a list of market-place iages for compute resources
.DESCRIPTION
This script is built from https://docs.microsoft.com/en-us/azure/virtual-machines/windows/cli-ps-findimage . 
Given a location, Publisher, OfferName, skuName, 
#>

$locName = Read-Host -Prompt "Please enter the Azure region you wish to search."

$LinuxDistros = [ordered] @{
    Canonical      = "Ubuntu";
    RedHat         = "RedHat";
    Openlogic      = "CentOS";
    SuSE           = "SUSE";
    Debian         = "credativ";
    "Oracle Linux" = "Oracle-Linux";
    CoreOS         = "CoreOS";
    Perforce       = "CentOS"
}

$LinuxDistros

$pubName =  Read-Host -Prompt "Please select a publisher from the list"

$vmImageOffer = Get-AzVMImageOffer -Location $locName -PublisherName $pubName

"Here are $pubName Offers for $locName `n"

$vmImageOffer.Offer

$imageSKUs = Get-AzVMImageSku -Location $locName -PublisherName $pubName | Select-Object Offer, Skus, Version | Format-List

"Here are the SKUs for $pubName in $locName `n"

$imageSKUs
