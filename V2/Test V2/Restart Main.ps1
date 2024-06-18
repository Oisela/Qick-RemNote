# Define the path of the AutoHotkey script
$scriptPath = "C:\GitHub\Qick-RemNote\Qick-RemNote\V2\Quick-RemNote-V2.ahk"

# Get the process by the script path
$process = Get-Process | Where-Object { $_.Path -eq $scriptPath }

# If the process is running, stop it
if ($process) {
    Stop-Process -Id $process.Id -Force
}

# Start the AutoHotkey script
Start-Process -FilePath "C:\GitHub\Qick-RemNote\Qick-RemNote\V2\Quick-RemNote-V2.ahk" -ArgumentList $scriptPath