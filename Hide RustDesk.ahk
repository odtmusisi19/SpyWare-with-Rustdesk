#Persistent
SetTimer, HideNotepad, 1000  ; Cek setiap 1 detik
return

HideNotepad:
If WinExist("ahk_exe rustdesk.exe") {
    WinHide, ahk_exe rustdesk.exe
}
return
