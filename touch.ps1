if($args.length -eq 0){
    Write-Output "Please state a file/folder name"
    return
}

$content = ""
$isDir = $false

for($i=0; $i -lt $args.Length; $i++){
    switch($args[$i]){
        "-dir"{$isDir = $true}
        "-con"{$content = $args[$i+1]}
    }
}

if($isDir -eq $false){
    set-content -Path ($args[0]) -Value ($content)
    Write-Host("Created File '" + $args[0] + "'")
}
else{
    new-item -Path ($args[0]) -ItemType Directory
    Write-Host("Created Directory '" + $args[0] + "'")
}