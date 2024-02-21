RG="rg-staticwebapp-demo"
az group create -n $RG -l westeurope -o table

az deployment group create --name staticwebappdemo --resource-group $RG --template-file main.bicep