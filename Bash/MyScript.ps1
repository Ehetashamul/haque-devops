# Login to Azure
Write-Host "Logging in to Azure..."
az login

# -------------------------
# Resource Group operations
# -------------------------
Write-Host "Creating Resource Group rg-lala01 in centralindia..."
az group create --name rg-lala01 --location centralindia


Start-Sleep -Seconds 30

# Verify RG creation
Write-Host "Checking Resource Groups..."
$rgList = az group list --output table
Write-Host $rgList





if ($rgList -match "rg-lala01") {
    Write-Host "Congratulations lala01 ! Resource Group rg-lala01 created successfully!"
} else {
    Write-Host "Sorry, something went wrong. Resource Group Creation Failed!"
}

# -------------------------
# Storage Account operations
# -------------------------
Write-Host "Creating Storage Account storagerglala01 in rg-lala01..."
az storage account create `
    --resource-group rg-lala01 `
    --name storagerglala01 `
    --location centralindia `
    --sku Standard_LRS `
    --kind StorageV2

Start-Sleep -Seconds 30

# Verify Storage Account creation
Write-Host "Checking Storage Accounts..."
$storageList = az storage account list --output table
Write-Host $storageList




if ($storageList -match "storagerglala01") {
    Write-Host "Congratulations lala01 ! Storage Account storagerglala01 created successfully!"
} else {
    Write-Host "Sorry, something went wrong. Storage Account Creation Failed!"
}