# docker-2-wsl2

Some PowerShell scripts I wrote to install/configure Windows Subsystem for Linux 2 and to import Docker images as WSL2 instances.

wsl2_base.ps1 will install/confgiure WSL2 
wsl2_dockerbuilder.ps1 will install and configure an ubuntu instance of WSL2 to act as the intermediare (you need something with docker binards to convert docker images -> .tar files)
wsl2_importdocker.ps1 will pull a docker image of your choosing -> export it as a .tar file -> import into WSL2

The end result should be a very reproducable WSL2 environment.

Tested on:
Windows 11 Enterprise
OS Build 22000.348
