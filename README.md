# LuckysPWSHExtensions

Currently, there are 2 commands:
```
- touch [fileName]
- nano [fileName]
```

```touch``` is basically just the linux version, and creates a file with the specified name

```nano```, on the other hand, only works when git is installed and opens the nano in-terminal editor of the file you've specified



## Installation
**I have no idea if this is the best way to do it, but it works for me, so yeah**  
<br/>
To install the commands to your powershell, follow these steps:  
	
- Open your powershell-profile. You should be able to obtain it's path by executing ```$PROFILE```
	> If you have visual-studio-code installed, you can also execute ```code $PROFILE```  
  <br/>
- Add the following lines to your profile:
```
. "PATH_TO_SCRIPT_FOLDER\nano.ps1"
. "PATH_TO_SCRIPT_FOLDER\touch.ps1"
```

	Of course you should replace "PATH_TO_SCRIPT_FOLDER" with the actual path


##Usage
The nano command is very simple, you just execute "nano" with your path as an argument
```nano ~/test/main.js```  

The touch command, on the other hand, has two optional arguments:
```
-dir
-con
```
```-dir``` tells the command, that it should create a directory, not a file  
```-con``` tells the command, that it should set the content of the **created file** to the following text  
Creating a file would look something like this
```
touch main.js
touch main.js -con ppconsole.print("HelloWorld");
```  
While creating a directory would look like this
```
touch JSExample -dir
```
