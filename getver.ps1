# Путь к файлу
$versionFile = "C:\Users\CYANIDE\Desktop\PROJECTS\kobus-pulse-main\utils\version.go"

# Читаем все строки
$lines = Get-Content $versionFile

# Ищем строку, где есть VersionText и "v..." внутри color.GreenString
foreach ($line in $lines) {
    if ($line -match 'VersionText\s*=\s*color\.GreenString\("v?([^"]+)"\)') {
        $version = $matches[1]
        break
    }
}

# Проверяем, нашли ли
if ($version) {
    Write-Output $version
}
else {
    Write-Error "Версия не найдена в $versionFile"
}