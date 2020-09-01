REGEDIT4
@echo off
echo Подключаем: сетевой диск "G:" (public)
echo - сначала отключили
net use g: /delete
echo - потом подключили
net use g: \\ADV.local\Public /savecred /persistent:yes
::net use g: \\192.168.0.2\public /savecred /persistent:yes
::net use g: \\192.168.0.2\public /savecred /persistent:yes
echo - и поправили описание
:: reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##ADV.local#public /f /v _LabelFromReg /t pub

; @ECHO OFF
; CLS
; REGEDIT.EXE /S "%~f0"
; EXIT

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##ADV.local#public]
"_LabelFromReg"="pub"
