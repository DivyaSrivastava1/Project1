# Open Command Prompt and check all the services
Start-Process cmd.exe -ArgumentList "/k sc query state= all"
