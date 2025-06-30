- powershell: |
    # Define the path to the WordPress folder
    $wordpressFolderPath = Join-Path -Path $(System.DefaultWorkingDirectory) -ChildPath "wordpress"
    
    # Check if .sql files exist and remove them
    $sqlFiles = Get-ChildItem -Path $wordpressFolderPath -Filter "*.sql" -File
    if ($sqlFiles.Count -gt 0) {
    Write-Host "SQL files found in the WordPress folder. Removing..."
        $sqlFiles | ForEach-Object {
            Remove-Item -Path $_.FullName -Force
        }
        Write-Host "SQL files removed successfully."
    } else {
        Write-Host "No SQL files found in the WordPress folder. No action required."
    }
    
  displayName: 'Delete any .sql in the root'
