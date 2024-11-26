# Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\yupanquidev.omp.json" | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# Aliases
# New Aliases
New-Alias brave "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
New-Alias figma "C:\Users\yupan\AppData\Local\Figma\Figma.exe"

# Set Aliases
Set-Alias touch ni

# Function Aliases
function bravei { brave --incognito }
function arc { start arc }

# PNPM
Set-Alias -Name pn -Value pnpm
Set-Alias -Name cat -Value bat

# git
Set-Alias -Name g -Value git

# FNM
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

Set-PSReadLineOption -PredictionViewStyle ListView

clear
