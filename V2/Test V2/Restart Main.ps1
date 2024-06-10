# Define the name of the program
$programName = "Qick-RemNote-V2"

# Get the process by the program name
$process = Get-Process -Name $programName -ErrorAction SilentlyContinue

# If the process is running, stop it
if ($process) {
    Stop-Process -Name $programName -Force
}

# Start the program
Start-Process -FilePath "C:\Windows\System32\$programName.exe"