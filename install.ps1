# ZipLoot Automated Codespace Windows Installer
Clear-Host
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  ZipLoot 1-Click Windows Cloud VM on GitHub Codespaces  " -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[1/3] Preparing GitHub Codespaces Devcontainer Config..." -ForegroundColor Yellow
Start-Sleep -Seconds 1

$codespaceUrl = "https://github.com/codespaces/new?repo=Ziplootapp/run-windows-github-codespaces"

Write-Host "[2/3] Opening 1-Click GitHub Codespace Creator in your browser..." -ForegroundColor Yellow
Start-Process $codespaceUrl

Write-Host ""
Write-Host "========================================================" -ForegroundColor Green
Write-Host "  [SUCCESS]: GitHub Codespace Creator Page Opened!       " -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next Steps in Browser:" -ForegroundColor White
Write-Host "1. Click 'Create codespace' on the GitHub page." -ForegroundColor Gray
Write-Host "2. Your 4 vCPU & 16GB RAM Windows 11 Cloud VM will boot automatically!" -ForegroundColor Gray
Write-Host "3. Access Windows 11 GUI via HTML5 Web RDP inside your browser!" -ForegroundColor Gray
Write-Host ""
Write-Host "Press Enter to finish setup..." -ForegroundColor DarkGray
Read-Host
