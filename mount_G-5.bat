REGEDIT4
@echo off
echo ������砥�: �⥢�� ��� "G:" (public)
echo - ᭠砫� �⪫�稫�
net use g: /delete
echo - ��⮬ ������稫�
net use g: \\ADV.local\Public /savecred /persistent:yes
::net use g: \\192.168.0.2\public /savecred /persistent:yes
::net use g: \\192.168.0.2\public /savecred /persistent:yes
echo - � ���ࠢ��� ���ᠭ��
:: reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##ADV.local#public /f /v _LabelFromReg /t pub

; @ECHO OFF
; CLS
; REGEDIT.EXE /S "%~f0"
; EXIT

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##ADV.local#public]
"_LabelFromReg"="pub"
