# LuckysPWSHExtensions

Currently, there are 3 commands:
```
- touch [fileName]
- nano [fileName]
- javaX [javaversion (20 - 10 and 8 {fuck java 9} )] [perm (permanent env variable change)]
```

```touch``` is basically just the linux version, and creates a file with the specified name

```nano```, on the other hand, only works when git is installed and opens the nano in-terminal editor of the file you've specified

```javaX``` will change the current enviornments java variable to the desired version (You'll have to set the javapath variable with the JAVA_HOME method)



## Installation
**I have no idea if this is the best way to do it, but it works for me, so yeah**  
<br/>
To install these commands, you can simply add this folder to your system's path variable

## Usage
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
touch mainWithCode.js -con ppconsole.print("HelloWorld");
```  
While creating a directory would look like this
```
touch JSExample -dir
```

After creating the directory or file, a global variable named $DIR will be created, so you can just do ```cd $DIR``` to enter the directory, or do ```nano $DIR``` to open the created file
