$msname='ms_capas'

dotnet new sln -n $msname.client
dotnet new webapi -n $msname.client.api
dotnet new classlib -n $msname.client.logic
dotnet new classlib -n $msname.client.dataccess
dotnet new classlib -n $msname.client.model 

dotnet sln .\$msname.client.sln add .\$msname.client.api\$msname.client.api.csproj 
dotnet sln .\$msname.client.sln add .\$msname.client.logic\$msname.client.logic.csproj 
dotnet sln .\$msname.client.sln add .\$msname.client.dataccess\$msname.client.dataccess.csproj 
dotnet sln .\$msname.client.sln add .\$msname.client.model\$msname.client.model.csproj 

dotnet add .\$msname.client.api\$msname.client.api.csproj reference .\$msname.client.logic\$msname.client.logic.csproj
dotnet add .\$msname.client.api\$msname.client.api.csproj reference .\$msname.client.model\$msname.client.model.csproj
dotnet add .\$msname.client.logic\ reference .\$msname.client.dataccess\$msname.client.dataccess.csproj
dotnet add .\$msname.client.logic\ reference .\$msname.client.model\$msname.client.model.csproj
dotnet add .\$msname.client.dataccess\ reference .\$msname.client.model\$msname.client.model.csproj
