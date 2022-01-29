function touch {
    $global:dir = "~"

    if($args.length -eq 0){
        Write-Host "Please state a file/folder name"
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
    }
    else{
        new-item -Path ($args[0]) -ItemType Directory
    }

    $global:dir = $args[0]
}
