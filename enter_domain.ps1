
Set-Alias -Name c -Value clear
 
$domain = "ADV"
$password = "tkwJWrwwrsB8DKplQtXt" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\unattendjointodomain" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential