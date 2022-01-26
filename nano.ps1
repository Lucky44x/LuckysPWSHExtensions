function nano{
    $COMMAND = "& 'C:\Program Files\Git\usr\bin\nano.exe'" + ($args[0])
    Invoke-Expression $COMMAND
}