<#
.SYNOPSIS
 Create a base terraform module
.DESCRIPTION
#>


$moduleName = Read-Host -Prompt "Please enter a module name"

# Create project folder
$p = New-Item -Path . -Name $moduleName -ItemType Directory
Set-Location -Path $p


# Create the base files

New-Item -Path . -Name main.tf -ItemType File
New-Item -Path . -Name backend.tf -ItemType File
New-Item -Path . -Name variable.tf -ItemType File
New-Item -Path . -Name outputs.tf -ItemType File
New-Item -Path . -Name README.md -ItemType File -


# Create nested modules directory
$createDir = Read-Host -Prompt "Do you require a nested sub-module Y or N?"

if ($createDir -eq 'Y' ) {
    New-Item -Path . -Name modules -ItemType Directory
}