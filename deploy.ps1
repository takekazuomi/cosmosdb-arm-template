Param (
    [string]$Name,
    [string]$Password,   
    [string]$Location
)

$baseDir = (Split-Path -Parent $MyInvocation.MyCommand.Path)

New-AzureRmResourceGroup -Name $Name -Location $Location -Force

New-AzureRmResourceGroupDeployment -Name "$Name-$(Get-Date -f "ddHHmm")"  -ResourceGroupName $Name -TemplateFile "$baseDir\azuredeploy.json" `
    -account $Name `
    -password ($Password | ConvertTo-SecureString -AsPlainText -Force)

