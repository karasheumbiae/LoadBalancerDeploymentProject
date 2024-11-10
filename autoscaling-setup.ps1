# PowerShell script to configure auto-scaling for VMs
# Variables
$resourceGroup = "LoadBalancerResourceGroup"
$vmScaleSetName = "myVmScaleSet"

# Set up autoscale rule for CPU usage over 50% for 5 minutes
az monitor autoscale create --resource-group $resourceGroup --resource $vmScaleSetName --name "CPUAutoscale" --min-count 2 --max-count 5 --count 2

az monitor autoscale rule create --resource-group $resourceGroup --autoscale-name "CPUAutoscale" --condition "Percentage CPU > 50 avg 5m" --scale out 1
