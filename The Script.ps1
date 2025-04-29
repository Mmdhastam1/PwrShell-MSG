# Configuration
$targetPC = "Your Client Target"
$message = "This is a Test."

# 1. Check if the remote system is reachable
if (Test-Connection -ComputerName $targetPC -Count 1 -Quiet) {
    Write-Host "✅ $targetPC is online.`n" -ForegroundColor Green

    # 2. Show currently logged-in users (optional)
    Write-Host "🔍 Active users on $targetPC:`n" -ForegroundColor Cyan
    query user /server:$targetPC

    # 3. Send message to all active sessions
    Write-Host "`n📨 Sending message to all users on $targetPC..." -ForegroundColor Yellow
    msg /server:$targetPC * "$message"

    Write-Host "`n✅ Message sent successfully." -ForegroundColor Green
} else {
    Write-Host "❌ $targetPC is unreachable or offline." -ForegroundColor Red
}
