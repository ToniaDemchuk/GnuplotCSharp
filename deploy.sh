dotnet pack --no-build --include-symbols -c Release /p:Version=1.0.0-CI%TRAVIS_BUILD_NUMBER%  
nuget push ./*.nupkg -Verbosity detailed -ApiKey %MYGET_SOURCE% -Source %MYGET_APIKEY%