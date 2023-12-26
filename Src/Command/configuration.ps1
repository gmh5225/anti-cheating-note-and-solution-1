
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *gamebar* | Remove-AppxPackage
Get-AppxPackage *xboxgamebar* | Remove-AppxPackage
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *camera* | Remove-AppxPackage
Get-AppxPackage *contacts* | Remove-AppxPackage
Get-AppxPackage *cortana* | Remove-AppxPackage
Get-AppxPackage *mobile* | Remove-AppxPackage
Get-AppxPackage *photos* | Remove-AppxPackage
Get-AppxPackage *msedge* | Remove-AppxPackage
Get-AppxPackage *msstore* | Remove-AppxPackage
Get-AppxPackage *capture* | Remove-AppxPackage
Get-AppxPackage *print* | Remove-AppxPackage
Get-AppxPackage *printer* | Remove-AppxPackage
Get-AppxPackage *mic* | Remove-AppxPackage
Get-AppxPackage *phone* | Remove-AppxPackage
Get-AppxPackage *exp* | Remove-AppxPackage
Get-AppxPackage *feature* | Remove-AppxPackage
Get-AppxPackage *pack* | Remove-AppxPackage
Get-AppxPackage *app* | Remove-AppxPackage
Get-AppxPackage *edge* | Remove-AppxPackage
Get-AppxPackage *webview* | Remove-AppxPackage
Get-AppxPackage *client* | Remove-AppxPackage
Get-AppxPackage *dev* | Remove-AppxPackage
Get-AppxPackage *cloud* | Remove-AppxPackage
Get-AppxPackage * | Remove-AppxPackage
Set-ProcessMitigation -PolicyFilePath C:\ExploitConfigfile.xml
Enable-MMAgent -ApplicationLaunchPrefetching
Enable-MMAgent -ApplicationPreLaunch -PageCombining -MemoryCompression
Set-MMAgent -ThrottleLimit 0 -MaxOperationAPIFiles 8192
icacls "D:\Battlenet Games" /inheritance:r /grant Administrators:F
Get-ScheduledTask * | Unregister-ScheduledTask -Confirm:$false