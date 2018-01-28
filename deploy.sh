Version=$1
Source=$2
ApiKey=$3

dotnet pack -o ./nuget_packages --no-build --no-restore --include-symbols -c Release /p:Version=$Version
dotnet nuget push ./nuget_packages/*.nupkg -k $ApiKey -s $Source