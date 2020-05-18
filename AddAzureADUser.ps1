#install azure ad module 
Install-Module -Name AzureAD -Repository PSGallery -Verbose

#Connect to Azure AD
Connect-AzureAD

#Create an Azure Ad User
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile

$PasswordProfile.Password = "AZad&&02218403"

New-AzureADUser -AccountEnabled $True -DisplayName "AzureAD User" `
                -PasswordProfile $PasswordProfile -MailNickName "AzureADUser" `
                -UserPrincipleName "azureaduser@yuksektek.com"
