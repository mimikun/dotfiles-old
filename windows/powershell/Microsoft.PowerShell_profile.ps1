function CustomSudo {Start-Process powershell.exe -Verb runas}
sal sudo CustomSudo

function CustomShutdown {Stop-Computer}
sal shutdown CustomShutdown