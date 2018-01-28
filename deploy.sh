Version=$1
Source=$2
ApiKey=$3
dotnet pack --no-build --include-symbols -c Release /p:Version=$Version
nuget push ./*.nupkg -Verbosity detailed -ApiKey $ApiKey -Source $Source