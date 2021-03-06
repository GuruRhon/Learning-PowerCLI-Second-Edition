$Parameters = @{
  From = 'admin@blackmilktea.com'
  To = 'manager@blackmilktea.com'
  Subject = 'VMware vSphere hosts Connection State report'
  Body = Get-Content -Path 'c:\VMHostsConnectionState.html' | Out-String
  BodyAsHtml = $true
  SmtpServer = 'smtpserver.blackmilktea.com’
}
Send-MailMessage @Parameters