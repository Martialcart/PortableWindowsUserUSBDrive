An experimental portable usb user shell. Run it's software on any windows 10 + computer<br>
<br>
Modified Scoop install. New drive letter doesn't break shims/paths.<br>
<br>
<br>
Install new software with Scoop<br>
<br>
<br>
Installation<br>
windows 10 +<br>
<br>
Run pc.bat from the the root folder of usb drive you want to install on<br>
<br>
Type following commands in the shell that opens:<br>
mkdir Home<br>
mkdir Appdata<br>
start powershell<br>
irm get.scoop.sh -outfile 'install.ps1'<br>
.\install.ps1 -ScoopDir 'V:\Scoop' -ScoopGlobalDir 'V:\Scoop\apps'<br>
<br>
<br>
troubleshooting:<br>
<br>
powershell doesn't allow the scoop innstalation script:<br>
you will need to run powershell as admin and allow scripts with the following command<br>
set-executionpolicy remotesigned<br>
<br>
[scoop advanced installation](https://github.com/ScoopInstaller/Install)
