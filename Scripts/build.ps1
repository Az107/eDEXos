DISM /Mount-image /imagefile: /MountDir:./mnt/
./Scripts/download.ps1
Mount-WindowsImage -ImagePath .\media\sources\boot.wim -Path .\mount\ -Index 1
#copy all folders from ./cache/donloads to ./mount/Program Files
Copy-Item -r ./cache/downloads/* "./mount/Program Files"