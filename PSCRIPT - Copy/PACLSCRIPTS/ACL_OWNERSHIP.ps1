$ACL = Get-Acl -Path "*"
$User = New-Object System.Security.Principal.NTAccount("uname")
$ACL.SetOwner($User)
$ACL | Set-Acl -Path "*"
Get-Acl -Path "*" -AllCentralAccessPolicies:$true -Audit:$true - | Formatcd-Custom ** -Force -Depth 4 | Out-File -FilePath ".\Users\uname\WEBROOT\COPYING_ACL_PERMISSIONS_OUTPUT.LOG\" -Encoding utf8 -Force