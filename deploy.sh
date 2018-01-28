Version=$1

dotnet pack --no-build --include-symbols -c Release /p:Version=$Version
nuget push ./*.nupkg -Verbosity detailed # -ApiKey %MYGET_SOURCE% -Source %MYGET_APIKEY%