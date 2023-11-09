#check rg exist or not
az group show --name "rg-dev-tf" 1>/dev/null 2>&1
if [ $? -ne 0 ]
then
    echo "rg not exist,will create"
    az group create -l "Australia east" -n "rg-dev-tf"
    az storage account create --name "tfdevaction" --resource-group "rg-dev-tf" --location "Australia east"
    az storage container create -n "devtfstate" --account-name "tfdevaction"
    sleep 60
else
    echo "already exist"
fi
