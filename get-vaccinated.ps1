<#
.SYNOPSIS
Short script to determine if you are deplorable (unvacinated) or a sheep ( vacinated).....
This is meant to be purely tongue in cheek.
I personally think that basically neither side has a clear claim to correcteness in the debate over whether to get a vaccination
or not. Punidits and non experts even in the medical feild ask us to look to the science. 
Science that in my opinion has been corrupted by politics and corporate pharma capitol interests.

I'm not an expert either but i have concerns on my biological ability to survive the possible negative aspects of the vaccine
I think there are valid reasons not to be vaccinated. I beleive if your healthy and of a mind to be vaccinated then by all means follow
your instincts.


#>

$vaccinationStatus = Read-Host -Prompt "Please enter your vaccination status vaccinated or unvaccinated"

if ($vaccinationStatus -eq "Vaccinated") {
    Write-Output "Oh so your a mindless Sheep? ..... bah bah bahhhh"
} else {
    Write-Output "Not vaccinated you are absolutely deplorable!!!!"
}