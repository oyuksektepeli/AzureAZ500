#Create Azure AD Group
New-AzureADGroup -DisplayName Marketing `
-MailEnabled $false -SecurityEnabled $true `
-MailNickName "NotSet"

#Add Group Member
$group = Get-AzureADGroup -Filter "DisplayName -eq 'Marketing'"

Get-AzureADGroupMember -ObjectId $group.ObjectId

Get-AzureADUser | Where-Object -FilterScript { $_.UserType -eq 'Member'}
Select-Object -Property objectId,DisplayName

Add-AzureAdGroupMember -ObjectId $group.objectId `
    -RefObjectId "objectId"

