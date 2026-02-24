# App Builder

## Скрипт для автоматической сборки приложений на golang

### Закинуть иконку в папку icons
### Переименовать ex-config.json в config.json и запонить его

```json
{
  "app": {
    "name": "Название приложения",
    "icon": "icon.ico",
    "desc": "Описание приложения",
    "license": "Лицензия © 2026",
    "company": "Компания",
    "main": "Путь\\к\\файлу\\main.go",
    "versionFile": "Путь\\к\\файлу\\version.go",
    "distrDir": "Путь\\к\\папке\\APP_BUILDER\\dist",
    "buildDir": "Путь\\к\\папке\\\\APP_BUILDER\\build",
    "sevenZip": "Путь\\к\\7-Zip\\7z.exe",
    "version": "" // берётся из version.go
  }
}
```
### Примерный вид version.go


```go
package utils

import "github.com/fatih/color"

var VersionText = color.GreenString("v1.1.3")
```

Убедиться в правильности данных и запустить builder.ps1

Он выполнит билд go в exe, заполнит данные, сменит иконку, 

Дополнительные параметры запуска builder.ps1:
```powershell
  -ver 1.1.2    // Указание версии вручную если файл version.go отсутствует
  -zip          // Создание архива рядом с exe

```

