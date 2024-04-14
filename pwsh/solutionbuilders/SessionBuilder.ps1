#remenber ot set counter to + 1 on the number of modules based on zero indexing.
$counter = 8

while ($counter -ne 1) {
    $counter--
    New-Item -Name "Module$counter" -ItemType Directory
    
}
Write-Host "Session Build Complete..."    
