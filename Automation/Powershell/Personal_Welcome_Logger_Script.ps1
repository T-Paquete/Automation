
# Ask for the user's name and currunt date
$name = Read-Host "Please enter your name"
$date = Get-Date -Format "yyyy-MM-dd"

# Create a welcom message
Write-Output "Todays date is $date."
Write-Output "Welcome $name! This marks the beginning of your PowerShell journey."

# Save to a log file
$logEntry = "[$date] $name started using PowerShell"
Add-Content -Path ./user_log.txt -Value $logEntry

