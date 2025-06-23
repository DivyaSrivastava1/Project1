# Open Command Prompt and check running services
Start-Process cmd.exe -ArgumentList "/k sc query state= all"
# Open Command Prompt with a list of running services (formatted)
#Start-Process cmd.exe -ArgumentList "/k echo Listing all running services... && echo ---------------------------- && sc query state= all | findstr /I /C:"RUNNING" && echo ---------------------------- && pause"