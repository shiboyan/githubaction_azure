#check rg exist or not
az group show --name $1 1>/dev/null 2>&1
if [ $? -ne 0 ]
then
    echo "rg not exist,will create"
    az group create -l "Australia east" -n $1
    az storage account create --name $2 --resource-group $1 --location "Australia east"  --sku Standard_LRS
    az storage container create -n $3 --account-name $2
    sleep 60
else
    echo "already exist"
fi
