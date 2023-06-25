# Function to create a new file

function new-file {
    [CmdletBinding()]
    [Alias("nf")]
    param (
        [Parameter(Mandatory = $true)][String] $fileName,
        [Parameter(Mandatory = $true)][String]$fileExtension

    )

    New-Item -Path . -Name ("$fileName" + ".$fileExtension") -ItemType File
}