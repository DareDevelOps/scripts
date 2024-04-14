<#
.Synopsis short script to update the terraform application
.Descriptiom
#>

#get the download uri
$URI = "https://github.com/opentofu/opentofu/releases/"

#scrape the links off the download page
$links = (Invoke-WebRequest -Uri $URI).links.href

# extract the platform download link
($downloadLInk = $links -match "tofu_1.6.0-alpha1_windows_amd64")

# define the  download  location
$output = "C:\temp\OpenTofu.zip"

Invoke-WebRequest -Uri "$downloadLInk" -OutFile $output

#change to the source diretory
Set-Location -Path "C:\Temp"

Expand-Archive -Path .\terraform.zip -DestinationPath "C:\terraform" -Force

#TODO: refactor to function 
#TODO: test for install path
#TODO: make multiplatform  create variable for platform link extraction