cls

@echo off 

echo Windows 11 installer 

echo please follow the installers instructuctions
echo only run this on fresh virtual machines as of right now
echo hit any key and grab some popcorn and enjoy :) :)

pause 

cls

color 4

echo NOTE THAT THIS IS FOR GPT/UEFI SYSTEMS ONLY 
echo FOR MBR: ENTER THE MBR FOLDER ON THE ROOT AND RUN FROM THERE

pause 

color f

notepad "diskpart help.txt" 
diskpart
dism /apply-image /imagefile:e:\sources\install.esd /index:1 /applydir:Z:\
bcdboot Z:\Windows /s W:
echo press any key to reboot
pause
wpeutil reboot
