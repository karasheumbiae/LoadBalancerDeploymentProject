# PowerShell script to create an Azure Key Vault and add secrets
# Variables
$resourceGroup = "KeyVaultResourceGroup"
$keyVaultName = "MyProjectKeyVault"
$location = "eastus"

# Create Resource Group
az group create --name $resourceGroup --location $location

# Create Key Vault
az keyvault create --name $keyVaultName --resource-group $resourceGroup --location $location

# Add a secret to Key Vault
az keyvault secret set --vault-name $keyVaultName --name "ExampleSecret" --value "mySecretValue"
