param($Request, $TriggerMetadata)

# Read the incoming JSON data from the HTTP request body
$UpdateData = $Request.Body | ConvertFrom-Json

# Process each update record from the request body
$CosmosOut = @()
foreach ($Update in $UpdateData) {
    $updateRecord = [PSCustomObject]@{
        deviceid      = $Update.deviceid
        description   = $Update.description
        kbArticle     = $Update.kbArticle
        installedBy   = $Update.installedBy
        installedDate = $Update.installedDate
    }

    # Add the update record to the CosmosDB output
    $CosmosOut += $updateRecord
}

# Use Push-OutputBinding to send the data to CosmosDB
Push-OutputBinding -Name CosmosOut -Value $CosmosOut
