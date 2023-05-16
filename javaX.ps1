# Taken from https://www.happycoders.eu/java/how-to-switch-multiple-java-versions-windows/
# Original code by Sven Woltmann, modified to suit my specific needs

param($java_version, $perm)

$path = "C:\Program Files\Java\jre-1.8"
switch($java_version){
    "20" {$path = "C:\Program Files\Java\jdk-20"}
    "19" {$path = "C:\Program Files\Java\jdk-19"}
    "18" {$path = "C:\Program Files\Java\jdk-18.0.2.1"}
    "17" {$path = "C:\Program Files\Java\jdk-17"}
    "16" {$path = "C:\Program Files\Java\jdk-16.0.2"}
    "15" {$path = "C:\Program Files\Java\jdk-15.0.2"}
    "14" {$path = "C:\Program Files\Java\jdk-14.0.2"}
    "13" {$path = "C:\Program Files\Java\jdk-13.0.2"}
    "12" {$path = "C:\Program Files\Java\jdk-12.0.2"}
    "11" {$path = "C:\Program Files\Java\jdk-11"}
    "10" {$path = "C:\Program Files\Java\jdk-10.0.2"}
    
    #Didn't feel the need to include java 9
    
    "8" {$path = "C:\Program Files\Java\jre-1.8"}
}
$env:JAVA_HOME = $path

if($perm -eq "perm"){
    [System.Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path = $env:JAVA_HOME + "\bin;" + $env:Path

Write-Output "Enabled Java $java_version"