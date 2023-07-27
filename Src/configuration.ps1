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
Set-ProcessMitigation -PolicyFilePath C:\ExploitConfigfile.xml