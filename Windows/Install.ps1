if(Test-Path ".\GitConfig" -PathType Container) {
    $module_destination = $env:PSModulePath.Split(";")[0]

    # Create the destination folder if it doesn't exist
    if(!(Test-Path $module_destination -PathType Container)) {
        New-Item $module_destination -ItemType Directory -Force 1> $null
    }
    # Copy the script to the destination
    Copy-Item -Path ".\GitConfig" -Destination $module_destination -Recurse -Force
    Unblock-File -Path "$module_destination\GitConfig\GitConfig.psm1"
}