Param (
    [string]$Name,
    [string]$Password,   
    [string]$Location
)

$baseDir = (Split-Path -Parent $MyInvocation.MyCommand.Path)

New-AzureRmResourceGroup -Name $Name -Location $Location -Force

$ipRangeFilter = (Invoke-WebRequest "http://inet-ip.info" -UserAgent "curl").Content -replace "`n", ""

New-AzureRmResourceGroupDeployment -Name "$Name-$(Get-Date -f "ddHHmm")"  -ResourceGroupName $Name -TemplateFile "$baseDir\azuredeploy.json" `
    -databaseAccountName $Name `
    -databasePassword ($Password | ConvertTo-SecureString -AsPlainText -Force) `
    -ipRangeFilter $ipRangeFilter

