echo "Enter a name for the new resource group where the server will exist:" &&
read resourceGroupName &&
echo "Enter an Azure region (for example, centralus) for the resource group:" &&
read location &&
echo "Enter name for AppService resource:" &&
read baseResourceName &&
params='baseResourceName='$baseResourceName
az group create --name $resourceGroupName --location $location &&
az deployment group create --resource-group $resourceGroupName --parameters $params --template-file azure_webapp_deploymentslot.json &&
echo "Press [ENTER] to continue ..."
