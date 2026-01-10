
# Get all services and export file
$services = Get-Service

foreach ($service in $services) {

if ($service.Status -ne "Running" -or $service.StartType -ne "Automatic") {
Write-Output $service.Name
    
    }
    
    
    if ($service.Name -eq "dcomlaunch") {
        break
        
        
    }
}

Get-CimInstance -ClassName Win32_Service
