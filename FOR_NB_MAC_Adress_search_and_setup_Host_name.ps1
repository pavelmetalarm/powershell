Set-Alias -Name c -Value clear
#$a = Get-NetAdapter -Name Ethernet | select MacAddress | Out-String
#Write-Output $a

#сначала выцепим строку с маком


#$a -match "\w...............\w"



$a =  Get-NetAdapter -Name Ethernet | select MacAddress | Out-String | Select-String -Pattern '\w...............\w'




$a -match ".......-[0-9A-Z][0-9A-Z]-[0-9A-Z][0-9A-Z]-[0-9A-Z][0-9A-Z]"


#Write-Output $Matches[0]
$mac  = $Matches[0] 

$mac1 = $mac.Substring(7).Replace("-","")
$mac2 =   $("NB-" + $mac1 )


Rename-Computer -NewName $mac2 -Force #-LocalCredential $(hostname)\u
