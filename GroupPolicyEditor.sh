# Prevent users from factory resetting computer
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System\Recovery" -Name "AllowRestoreToDefault" -Value 0

# Disable Microsoft Sign-In Options on First Login
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System\Logon" -Name "ShowFirstSignInAnimation" -Value 0
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System\Logon" -Name "HideGettingStarted" -Value 1

# Remove Personalized Website Recommendations
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "RemovePersonalizedWebsiteRecommendations" -Value 1

# Prevent users from uninstalling applications from Start
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Explorer" -Name "NoUninstallFromStart" -Value 1

# Don’t launch privacy settings experience on user logon
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OOBE" -Name "DisablePrivacyExperience" -Value 1

# Disable Consumer Microsoft Accounts
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\MicrosoftAccount" -Name "DisableConsumerAccounts" -Value 1

# Disable OneDrive
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "PreventNetworkTrafficPreUserSignIn" -Value 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSync" -Value 1

# Disable Windows Apps
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WindowsCalendar" -Name "Disabled" -Value 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Chat" -Name "ChatIconOnTaskbar" -Value 0
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WindowsSecurity\FamilyOptions" -Name "HideFamilyOptions" -Value 1