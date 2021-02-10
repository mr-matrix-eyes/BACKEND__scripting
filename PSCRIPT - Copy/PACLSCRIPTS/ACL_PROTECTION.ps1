$ACL = Get-Acl -Path "*"
$ACL.SetAccessRuleProtection($true, $false)
$ACL | Set-Acl -Path "*"