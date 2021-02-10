$ACL = GET-ACL -Path "*",
$AccessRule = New-Object System.SecuritY.AccessControl.FileSystemAccessRule("uname","FULLCONTROL","ALLOW"),
$ACL.SetAccessRule($AccessRule),
$AccessRule | Set-Acl -Path "*",
(Get-Acl -Path ".\ACL_TEST.TXT").Access | Format-Custom **,IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -Force

$AccessRule|Stop-Process -Verbose  -InformationVariable = 14248 -PassThru:$true -InformationAction:Ignore,SilentlyContinue -PipelineVariable:$AccessRule -Force -InformationVariable=={char/enum}.Equals('True').CompareTo[(Reset-NCSIPolicyConfiguration)].apply-clike(bool-and'True');