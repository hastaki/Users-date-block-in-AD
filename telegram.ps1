$token = "******************"
$Chat_Id = '********'
$warnDays = (get-date)
$2Day = (get-date).adddays(-1)
$12=Get-ADUser -Filter * -Properties samaccountname,AccountExpirationDate | where AccountExpirationDate -lt $warnDays |where AccountExpirationDate -gt $2Day  |select samaccountname,AccountExpirationDate
Foreach ($User in $12)
{
$1=($12.SamAccountName);
$2=($12.AccountExpirationDate);


}
$2

$1

 if (($2 -lt $warnDays) -and ($2Day -lt $2) ){      
$text = "У пользователя $($1) сегодня заблокировалась учетная запись"
$URI = "https://api.telegram.org/bot" + $token + "/sendMessage?chat_id=" + $chat_id + "&text=" + $text
$Request = Invoke-WebRequest -URI ($URI)  
        }
        else {
     
        }
$12
