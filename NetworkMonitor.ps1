# Ruta del archivo de log
$logPath = "C:\Scripts\Logs\PingLog.txt"
$hostToPing = "google.com"

# Crear directorio si no existe
if (-not (Test-Path -Path "C:\Scripts\Logs")) {
    New-Item -ItemType Directory -Path "C:\Scripts\Logs" -Force
}

# Realizar ping y registrar resultado
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$pingResult = Test-Connection -ComputerName $hostToPing -Count 1 -Quiet

if ($pingResult) {
    $status = "Conexión exitosa a $hostToPing"
} else {
    $status = "Fallo en la conexión a $hostToPing"
}

# Guardar en log
Add-Content -Path $logPath -Value "[$timestamp] $status"