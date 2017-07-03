# Cosmos DB ARM template sample

## Howto deploy

```
./deploy.ps1 -Name <databasename> -Location "japaneast" -Password <somepassword>
```

## Note

1. In deploy.ps1 create resource group as same as ``` <databasename> ``` . This is for simplicity.
2. The template has experience and consistencyLevel parameter. But deploy.ps1 use default parameter. This is also for simplicity.
3. Maybe defaultExperience tag change portal behavior.
4. maxIntervalInSeconds and maxStalenessPrefix only required consistencyLevel "Bounded Staleness".
5. I can't find firewall settings.
6. also I can't find global distribution setting.

