cls

@echo off 

echo Windows 11 installer 

echo please follow the installers instructuctions
echo only run this on fresh virtual machines as of right now
echo hit any key and grab some popcorn and enjoy :) :)

pause 

cls

color 4

echo NOTE THAT THIS IS FOR MBR/BIOS SYSTEMS ONLY 
echo FOR GPT: RUN THE .bat ON THE ROOT 

pause 

color f

notepad "diskpart help.txt" 
diskpart
dism /apply-image /imagefile:e:\sources\install.esd /index:5 /applydir:Z:\
bcdboot Z:\Windows /s W: /F BIOS
echo press any key to reboot
pause
wpeutil reboot