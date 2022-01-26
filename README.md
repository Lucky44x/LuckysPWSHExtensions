# LuckysPWSHextensions

Currently, there are 2 commands:
```
	-touch [fileName]
	-nano [fileName]
```

```touch``` is basically just the linux version, and creates a file with the specified name

```nano```, on the other hand, only works when git is installed and opens the nano in-terminal editor of the file you've specified



## Installation
To install the commands to your powershell, follow these steps:
- Open your powershell-profile. You should be able to obtain it's path by executing ```$PROFILE```
	> If you have visual-studio-code installed, you can also execute ```code $PROFILE```
- Add the following lines to your profile:
```
. "PATH_TO_SCRIPT_FOLDER\nano.ps1"
. "PATH_TO_SCRIPT_FOLDER\touch.ps1"
```
Of course you should replace "PATH_TO_SCRIPT_FOLDER" with the actual path

