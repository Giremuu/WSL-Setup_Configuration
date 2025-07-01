# WSL Setup & Configuration Script
This repository contains PowerShell scripts to install and configure Windows Subsystem for Linux (WSL).
It sets WSL 2 as the default version, installs Ubuntu and Debian, and sets Ubuntu as the default distribution. Useful for quickly setting up a development environment on Windows.


## STEP 1 - Active features to install WSL 2
In PowerShell (as Administrator), run this:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
🔁 Reboot your PC right after running these commands.


## STEP 2 - Install WSL 2
Download the file **_Scripts_ps1/Install_WSL.ps1_** and run it using PowerShell (as Administrator). This script will install WSL 2 with Ubuntu as the default distribution, along with Debian. You will be prompted to create your UNIX username and password directly in the PowerShell window, so make sure to pay attention.

Ubuntu and Debian will be installed using the latest available versions from the Microsoft Store. To set Debian as the default distribution, run the following command in PowerShell:
```
wsl --set-default Debian
```
To view all your installed WSL distributions, run:
```
wsl -l -v
```
To launch Ubuntu, run:
```
wsl -d Ubuntu
```


## STEP 3 - Configure Ubuntu and Debian
After installing Ubuntu and Debian, you can configure both distributions by running the provided shell script.
Firstly, you need to install git on your WSL terminal:
```
apt-get install git -y
```
Now, you can clone this repo with:
```
git clone https://github.com/Giremuu/WSL-Setup_Configuration.git
```
Make the script executable:
```
chmod +x Post-Install_WSL.sh
```
And run it:
./Post-Install_WSL.sh


#### This script will:
- Update the system
- Install essential tools (curl, htop, neofetch, etc.)
- Create a default ~/scripts-utils folder
- Set a custom prompt
- Enable neofetch at shell startup
