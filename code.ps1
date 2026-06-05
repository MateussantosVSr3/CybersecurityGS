$origem = "C:\inetpub\wwwroot\contato.json"
$pastaDestino = "C:\Backups_SpaceCode"
$dataHora = Get-Date -Format "yyyy-MM-dd_HH-mm"
$arquivoBackup = "$pastaDestino\contato_backup_$dataHora.json"

Write-Host "Iniciando processo de backup seguro..." -ForegroundColor Cyan

if (Test-Path $origem) {
    Copy-Item -Path $origem -Destination $arquivoBackup
    Write-Host "[SUCESSO] Backup realizado em: $arquivoBackup" -ForegroundColor Green
    
    $logMsg = "$dataHora - Backup do contato.json concluido com sucesso."
    Add-Content -Path "$pastaDestino\security_backup.log" -Value $logMsg
} else {
    Write-Host "[ERRO] Arquivo de origem não encontrado!" -ForegroundColor Red
}
