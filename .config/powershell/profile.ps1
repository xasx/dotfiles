
Import-Module '/home/aschoeneck/.local/share/powershell/Modules/posh-git/0.7.3\posh-git.psd1'
Import-Module Get-ChildItemColor

Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope

Import-Module oh-my-posh
Set-Theme MyParadox