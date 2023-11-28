# Oh My Posh
oh-my-posh init --config 

# Icons for Windows Terminal
Import-Module -Name Terminal-Icons

# Alias for PNPM
Set-Alias -Name pn -value pnpm

# FNM
fnm env --use-on-cd | Out-String | Invoke-Expression

Set-PSReadLineOption -PredictionViewStyle ListView

clear
