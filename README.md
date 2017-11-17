# Cosmos DB ARM template sample

Cosmos DB ARM template was almost as same as Document DB. The only difference is Azure portal experience that is controlled by "defaultExperience" tag. Still, I'm not sure. If somebody has information about this. Tell me.

[Create a Multi-Region DocumentDB Database Account](https://github.com/Azure/azure-quickstart-templates/tree/master/101-documentdb-account-create-multi-region-account)


<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ftakekazuomi%2Fcosmosdb-arm-template%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ftakekazuomi%2Fcosmosdb-arm-template%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

## Howto deploy

```
./deploy.ps1 -Name <databasename> -Location <location> -Password <somepassword>

```

## create mongodb api account

```
./deploy.ps1 -Name <databasename> -Location <location> -Password <somepassword> -Experience MongoDB -Kind MongoDB
```


## Update

* 2017/7/11 Add firewall settings. Only configure ip filter. Setting ipRangeFilter disables "Allow access to Azure Portal".
* 2017/11/17 `Microsoft.DocumentDB/databaseAccounts template reference <https://docs.microsoft.com/en-us/azure/templates/microsoft.documentdb/databaseaccounts>`_

## Note

1. In deploy.ps1 create resource group as same as ``` <databasename> ``` . This is for simplicity.
2. The template has experience and consistencyLevel parameter. But deploy.ps1 use default parameter. This is also for simplicity.
3. Maybe defaultExperience tag change portal behavior.
4. maxIntervalInSeconds and maxStalenessPrefix only required consistencyLevel "Bounded Staleness".
5. I can't find how to configure firewall settings of "Allow access to Azure Portal".
