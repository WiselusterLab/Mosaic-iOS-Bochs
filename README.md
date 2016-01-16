# Mosaic-iOS-Bochs
	A fork of Mosaic for building and debugging with Bochs on ARM iOS devices.

## What is Mosaic?
	Mosaic stands for "Mosaic Operating System for All Imaginable Computers", which is a free, open-source operating system developed by the WiselusterLab team.

## Requirements
	CPU: ARM v6 architecture or higher
	OS: iOS 4.2.1 or higher (jailbreaked)
	Software: 1. MobileTerminal
	          2. coreutils
	          3. make
	          4. No ShockDev Team Bochs deb packages (com.sh0ckdev.bochs or com.sh0ckdev.bochsarmv7)
	Disk: At least 17 MB (/) + 120 MB (/var)
### Note:
	If you've got ShockDev Team Bochs installed on your device, please remove them in Cydia and reinstall the one provided in the source tree in order to get Mosaic to work correctly. One single bash command should do the thing:
	```Bash
	dpkg -r com.sh0ckdev.bochs com.sh0ckdev.bochsarmv7
	```
