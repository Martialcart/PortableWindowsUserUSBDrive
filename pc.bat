::ECHO OFF

::Make substitute drive and connect it to usb's drive
subst V: %~dp0

::connect Virtual drive to lokal User folder
subst Z: %USERPROFILE%

:: go to V:
V:

::save virtual drive-letter as variable
set drive=V:\

::Create path variables
set scoop=%drive%Scoop
set shims=%drive%Scoop\shims

:: Temporary environment changes for shell
setlocal

:: add program path's to this cmd instance
path=%scoop%;%shims%;%path%

set HOMEDRIVE=%drive%
set HOMEPATH=\Home
set LOCALAPPDATA=%drive%Appdata\Local
set TEMP=%LOCALAPPDATA%Temp
set TMP=%TEMP%

:: Customice look
title jan's portable PC

::clear screen
cls

:: Stop cmd from closing
cmd -k

::delete lokal cache
rmdir /s /q Z:\ScoopCache

::delete virtual drives
subst /D Z:
subst /D V:

