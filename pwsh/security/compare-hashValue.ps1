<#
.SYNOPSIS
Quick function to verify the MD5 hash of a downloaded software package
.DESCRIPTION
The get-MD5hash is an awful name for the function as the Alogorithm can be any of
- MD5
- SHA1
- SHA256
- SHA384
- SHA512

#>

function compare-HashValue {
    
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
} Set-Alias -name chv -Value compare-HashValue

