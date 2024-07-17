# Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\yupanquidev.omp.json" | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# Alias
function brave { start arc }
function arc { start arc }

# PNPM
Set-Alias -Name pn -value pnpm

# FNM
fnm env --use-on-cd | Out-String | Invoke-Expression

Set-PSReadLineOption -PredictionViewStyle ListView

clear
