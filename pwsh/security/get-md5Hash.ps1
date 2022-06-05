<#
.SYNOPSIS
Quick function to verify the MD5 hash of a downloaded software package

#>

function get-md5Hash {
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$path,

        [Parameter(Mandatory=$true)]
        [string]$Algorithm,
         
        
        [Parameter(Mandatory=$true)]
        [string]
        $hashValue
    )

    

    $fileHash = (Get-FileHash -Path $path -Algorithm $Algorithm).Hash
     if ($hashValue -eq $fileHash) {
         'The file hash is good.'
     } else {
         "The file hash does match please re-verify the downloaded software is good."
     }
} Set-Alias -name gfh  -Value get-md5Hash

