param (
    $source = ".\dist\app.exe",
    $json = ".\config.json"
)
$config = Get-Content $json | ConvertFrom-Json

.\Tools\rcedit-x64.exe $source --set-file-version $config.app.version
.\Tools\rcedit-x64.exe $source --set-product-version $config.app.version
.\Tools\rcedit-x64.exe $source --set-version-string "ProductName" $config.app.name
.\Tools\rcedit-x64.exe $source --set-version-string "FileDescription" $config.app.desc
.\Tools\rcedit-x64.exe $source --set-version-string "LegalCopyright" $config.app.license
.\Tools\rcedit-x64.exe $source --set-version-string "CompanyName" $config.app.company
.\Tools\rcedit-x64.exe $source --set-icon ".\icons\$($config.app.icon)"

Rename-Item $source ".\$($config.app.name).exe"
Move-Item ".\dist\$($config.app.name).exe" ".\build\$($config.app.name).exe"
