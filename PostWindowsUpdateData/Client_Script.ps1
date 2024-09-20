# Define the Azure Function URL and the function key if required
$functionUrl = "http://localhost:7071/api/PostWindowsUpdate"

# Define the JSON data to be sent
$UpdateData = Get-Hotfix

$AllUpdateInfo = [System.Collections.Generic.List[Object]]@()
Foreach ($Update in $UpdateData) {
    
    $Obj = [PSCustomObject]@{
        deviceid      = $env:ComputerName
        description   = $Update.description
        kbArticle     = $Update.HotfixId
        installedBy   = $Update.InstalledBy
        installedDate = (Get-Date "$($Update.InstalledOn)").ToString("yyyy-MM-ddTHH:mm:ssZ")
    }
    
    $AllUpdateInfo.Add($Obj) | Out-Null
}

$jsonData = $AllUpdateInfo | ConvertTo-Json -Depth 10

# Post the data to the Azure Function using Invoke-RestMethod
try {
    $response = Invoke-RestMethod -Uri $functionUrl -Method Post -ContentType "application/json" -Body $jsonData

    # Output the response from the Azure Function
    Write-Host "Response from Azure Function:" -ForegroundColor Green
    Write-Host $response
}
catch {
    Write-Host "Error occurred:" -ForegroundColor Red
    Write-Host $_.Exception.Message
}
