# Function to create a new file

function new-file {
    param (
        [Parameter(Mandatory = $true)][String] $fileName,
        [Parameter(Mandatory = $true)][String]$fileExtension

    )

    New-Item -Path . -Name ("$fileName" + ".$fileExtension") -ItemType File
} New-Alias  -Name nf -Value new-file