
$plan = "ndaSampleFuncPlan"
$resourceGroup = "ndaRgFuncSample"
$storage = "ndaSampleFuncStorage"
$funcName = "ndaSampleFunc"

az appservice plan create^
 --name $plan^
 --resource-group $resourceGroup

az storage account create^
 --name $storage^
 --resource-group $resourceGroup^
 --access-tier Cool^
 --kind StorageV2^
 --location "West Europe"^
 --sku Standard_LRS

az functionapp create^
 -g $resourceGroup^
 --plan $plan^
 --name $funcName^
 -s $storage