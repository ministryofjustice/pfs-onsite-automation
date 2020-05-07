#**************************************************************************************************
# AD-CleanUp.ps1
# For use with Windows 2012 (SCRIPT)
#
# SYNOPSIS
# Set of functions
# 1) Add-Log - Creates and addes to a log file at D:\AD-Automation - This is the primary log format.
# 2) Get-ADInfo - Gets the AD infor for Prisoners or Officers based upon the passed Param. Uses this data to create 
# base stats, audit and CSV's for usage later on
# 3) Move-ToDisabled - Moves the found AD objects that are 90 days or more (since usage, password reset, last login)
# to a disable OU in AD. Storage is 180 days from here. Again uses the OU passed and data passed. Thus can be called
# a custom CSV.
# 4) Move-AdRogue - Function to move any accounts that have been renabled in the disabled OU. Stops accidental deletion.
# 5) Remove-ADAccounts - Deletes accounts that are older than 180 days. Login, password set, will reset this counter.
# 6) Final part of the script moves all logs into a secondary folder and keeps for 120 days.
#
#Presumption – This is being run on the Wayland or Berwyn AD Structure.
#
# CUSTOM ATTRIBUTES REQUIRED
# N/A
#
# PLATFORM
# Windows Server 2012 / 2016 / 2019 POSH 4.0 +
#
# AUTHOR
# Richard Dakin
#
# VERSION CONTROL
# 1.0   :: 06/03/2019 :: Creation
#
#**************************************************************************************************
#**************************************************************************************************

