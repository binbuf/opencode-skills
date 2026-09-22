$ErrorActionPreference = "Stop"

$SrcDir = "src"
$DestDir = Join-Path (Join-Path $HOME ".config") "opencode"

if (-not (Test-Path $SrcDir -PathType Container)) {
    Write-Error "Directory '$SrcDir' not found in the current directory."
    exit 1
}

$Files = Get-ChildItem -Path $SrcDir -File -Recurse

if ($Files.Count -eq 0 -or $Files -eq $null) {
    Write-Host "Warning: '$SrcDir' is empty. Nothing to copy." -ForegroundColor Yellow
    exit 0
}

$HasConflict = $false
$SrcPathLength = (Resolve-Path $SrcDir).Path.Length

foreach ($File in $Files) {
    $RelPath = $File.FullName.Substring($SrcPathLength).TrimStart('\', '/')
    $DestPath = Join-Path $DestDir $RelPath

    if (Test-Path $DestPath) {
        Write-Host "Error: File already exists: $DestPath" -ForegroundColor Red
        $HasConflict = $true
    }
}

if ($HasConflict) {
    Write-Host "`nInstallation aborted." -ForegroundColor Yellow
    Write-Host "To fix this, please remove, rename, or backup the conflicting files in $DestDir, then try again." -ForegroundColor Yellow
    exit 1
}

foreach ($File in $Files) {
    $RelPath = $File.FullName.Substring($SrcPathLength).TrimStart('\', '/')
    $DestPath = Join-Path $DestDir $RelPath
    $DestParentDir = Split-Path $DestPath -Parent

    if (-not (Test-Path $DestParentDir)) {
        New-Item -Path $DestParentDir -ItemType Directory -Force | Out-Null
    }

    Copy-Item -Path $File.FullName -Destination $DestPath
}

Write-Host "Configuration successfully copied from $SrcDir to $DestDir." -ForegroundColor Green
