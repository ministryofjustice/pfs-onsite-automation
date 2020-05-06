$date = (Get-Date).AddDays(-365)
# Disable
Get-ADComputer -SearchBase 'OU=Laptops,OU=Prisoners,OU=Workstations,OU=WLI,OU=Prisons,DC=WLI,DC=DPN,DC=GOV,DC=UK' -Property Name,lastLogonDate -Filter {lastLogonDate -lt $date} | Set-ADComputer -Enabled $false
# Move
Get-ADComputer -SearchBase 'OU=Laptops,OU=Prisoners,OU=Workstations,OU=WLI,OU=Prisons,DC=WLI,DC=DPN,DC=GOV,DC=UK' -Property Name,Enabled -Filter {Enabled -eq $False} | Move-ADObject -TargetPath "OU=Disabled Laptops,OU=Laptops,OU=Prisoners,OU=Workstations,OU=WLI,OU=Prisons,DC=WLI,DC=DPN,DC=GOV,DC=UK"


