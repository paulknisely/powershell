<#
    .NOTES
    ===========================================================================
    Created on:   	*
    Created by:   	*
    Organization: 	*
    Filename:       Enable-Mapped-Drives-Elevated-Apps.ps1
    ===========================================================================
    .DESCRIPTION
    Enabling Mapped Drives in the Elevated Apps as explained at:
    http://woshub.com/how-to-access-mapped-network-drives-from-the-elevated-apps
    Manual way of doing this is:
    1) Open the registry editor (regedit.exe)
    2) Go to the registry key HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
    3) Create a new parameter (DWORD type) with the name EnableLinkedConnections and the value 1
    4) Restart your computer (or restart the LanmanWorkstation service with the command:
       'Get-Service LanmanWorkstation | Restart-Service –Force' and re-logon Windows
#>

New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name EnableLinkedConnections -Value 1 -PropertyType 'DWord'
