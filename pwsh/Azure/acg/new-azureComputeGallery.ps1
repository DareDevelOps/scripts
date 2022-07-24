<#
.SYNOPSIS
.DESCRIPTION
.
#>

#resource group parameters
$rgName = Read-Host -Prompt "please enter a name for the resource group"
$location = Read-Host -Prompt "Please enter a valid Azure region ex. eastus"

New-AzResourceGroup -Name $rgName -Location $location
#Azure Compute gallery parameters
$galleryName = Read-Host -Prompt "Please enter a name for the Azure Compute Gallery"

New-AzGallery `
-Location $location `
-ResourceGroupName $rgName `
-GalleryName $galleryName `
-Description "Test Gallery for DareDevelOps"
