Version=$1
Source=$2
ApiKey=$3

dotnet pack --no-build --no-restore --include-symbols -c Release /p:Version=$Version
dotnet nuget push *.nupkg -k $ApiKey -s $Source