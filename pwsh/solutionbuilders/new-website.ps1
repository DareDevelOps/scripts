<#
.SYNOPSIS
Create a basic website framework

#>

$webSiteName = Read-Host -Prompt "Please enter the sitename"

$siteDir = New-Item -Path . -Name $webSiteName -ItemType Directory
Set-Location $siteDir

New-Item -Path . -Name index.html -ItemType File
New-Item -Path . -Name scripts -ItemType Directory
New-Item -Path . -Name images -ItemType Directory
New-Item -Path . -Name styles -ItemType Directory
